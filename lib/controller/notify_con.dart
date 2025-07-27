import 'package:get/get.dart';

class NotifyCon extends GetxController {
  RxBool isNotified = true.obs;
  void notifyManager() {
    isNotified.value= !isNotified.value;
   
  }
}