import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/image_picker_controller.dart';

class ImagePickerContainer extends StatelessWidget {
  ImagePickerContainer({super.key});
  final ImageController controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    controller.retrieveLostData();

    return GestureDetector(
      onTap: controller.pickImage,
      child: Obx(() {
        return Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            image: controller.imageFile.value != null
                ? DecorationImage(
                    image: FileImage(controller.imageFile.value!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: controller.imageFile.value == null
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline, color: Color(0XFF007DFF)),
                      SizedBox(height: 8),
                      Text(
                        "Add Photo",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              : null,
        );
      }),
    );
  }
}
