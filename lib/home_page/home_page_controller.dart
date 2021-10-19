import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordera_orderfoodapp/Constants/Food/ingredient.dart';

class HomePageController extends GetxController {
  var chosenIngredient = "".obs;
  var sliderValue = 0.0.obs;
  var color = Colors.orange.obs;
  var viableColors = [
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.pink,
    Colors.teal,
    Colors.blue,
  ].obs;

  // setColor() {
  //   if (color == Colors.orange) {
  //     color = Colors.blue;
  //   } else {
  //     color = Colors.orange;
  //   }
  // }
}
