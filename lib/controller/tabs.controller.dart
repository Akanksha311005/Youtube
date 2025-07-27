import 'package:get/get.dart';

class TabsController extends GetxController {
  // Observable integer using GetX
  var selectedIndex = 0.obs;

  // Change tab index
  void changeTab(int index) {
    selectedIndex.value = index;
  }
}



