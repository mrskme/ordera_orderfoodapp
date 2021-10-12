import 'package:get/get.dart';
import 'package:ordera_orderfoodapp/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Center(
          child: TextButton(
              child: Text(controller.textContent.value),
              onPressed: controller.SetTextContent),
        ),
      ),
    );
  }
}
