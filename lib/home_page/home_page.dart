import 'package:get/get.dart';
import 'package:ordera_orderfoodapp/Constants/Food/sauces.dart';
import 'package:ordera_orderfoodapp/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    var sauces = Sauces();
    print(sauces.allMap);
    return Obx(
      () => Scaffold(
        body: Container(
          color: Colors.purple,
          child: Center(
            child: TextButton(
                child: Column(
                  children: [
                    Text(controller.textContent.value),
                    Container(
                        width: 100,
                        child: Image.asset('assets/images/minced_meat.png')),
                  ],
                ),
                onPressed: controller.SetTextContent),
          ),
        ),
      ),
    );
  }
}
