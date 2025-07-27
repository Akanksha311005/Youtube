import 'package:get/get.dart';

class ShortsController extends GetxController {
  RxString mytext = "Subscribe".obs;
  RxString channelname = "Gif_official".obs;
  RxBool isLiked = false.obs;
  RxBool isDisliked = false.obs;
  
  
  void changeValue() {
    if (mytext.value == "Subscribed✨") {
      mytext.value = "Subscribe";
    } else {
      mytext.value = "Subscribed✨";
    }
  }

   void toggleLike() {
    isLiked.value = !isLiked.value;
    if (isLiked.value) isDisliked.value = false;
  }

  void toggleDislike() {
    isDisliked.value = !isDisliked.value;
    if (isDisliked.value) isLiked.value = false;
  }
}
