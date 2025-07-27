import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool magic = true.obs;
  void con() {
    magic != magic;
    if (magic.value == true) {
      magic.value = false;
    } else {
      magic.value = true;
    }
  }
  
}
