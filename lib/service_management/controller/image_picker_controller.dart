import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  var imageFile = Rxn<File>();
  final ImagePicker _picker = ImagePicker();


  Future<void> pickImage() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        imageFile.value = File(pickedFile.path);
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }


  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) return;

    if (response.files != null && response.files!.isNotEmpty) {
      imageFile.value = File(response.files!.first.path);
    } else if (response.exception != null) {
      print('Lost data error: ${response.exception}');
    }
  }
}
