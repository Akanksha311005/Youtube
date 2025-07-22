import 'package:get/get.dart';

class normalcontroller extends GetxController {
  RxInt count = 0.obs;
  RxString name = "Akanksha".obs;
  void add() {
    count++;
  }

  void updatestring() {
    if (name.value == "Akanksha") {
      name.value = "Jungkook";
    } else {
      name.value = "Akanksha";
    }
  }
}
