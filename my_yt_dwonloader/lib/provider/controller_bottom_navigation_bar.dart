import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  // Observable variable for managing the selected tab index
  var selectedIndex = 0.obs;

  // Method to change the selected index
  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}
