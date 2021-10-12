import 'package:get/get.dart';

class HomePageController extends GetxController {
  final textContent = "hei".obs;

  set setTextContent(String newContent) {
    textContent.value = newContent;
  }

  void SetTextContent() {
    textContent.value = "ha";
  }
}
