import 'package:get/get.dart';

class ShortsController extends GetxController {
  var mytext = "Subscribe".obs;
  var channelname = "Gif_official".obs;
  void changeValue() {
    if (mytext.value == "Subscribed✨") {
      mytext.value = "Subscribe";
    } else {
      mytext.value = "Subscribed✨";
    }
  }
}
