import 'package:get/get.dart';

class LikeController extends GetxController {
  var ifliked = false.obs;
 var isDisliked  = false.obs;
  void like() {
    // handle like action
    if (ifliked == true) {
      ifliked.value = false;
    } else {
      ifliked.value = true;
    }
  }
  void dislike() {
    isDisliked.value = !isDisliked.value;
    if (isDisliked.value) {
      ifliked.value = false;
    }
  }
}