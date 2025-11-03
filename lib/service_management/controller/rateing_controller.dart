
import 'package:get/get.dart';

class RatingController extends GetxController {
  var rating = 0.obs;
  void setRating(int value){
      rating.value = value;
  }
  void reset() {
    rating.value = 0;
  }
}