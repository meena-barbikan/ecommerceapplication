import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  final carouselindex = 0.obs;
  void updateIndex(value) {
    carouselindex.value = value;
  }
}
