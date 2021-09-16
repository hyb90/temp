import 'package:get/get.dart';

class AppBarController extends GetxController {
  static AppBarController instance = Get.find();
  var position = 0.0.obs;
  var page = "".obs;
  changePosition(double p) {
    position.value = p;
  }
  changePage(String p) {
    page.value = p;
  }
}