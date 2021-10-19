import 'package:get/get.dart';
import 'package:ordera_orderfoodapp/Constants/Food/ingredients.dart';
import 'package:ordera_orderfoodapp/Constants/Food/sauces.dart';
import 'package:ordera_orderfoodapp/Constants/ingredients_collection.dart';
import 'package:ordera_orderfoodapp/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

class HomePage extends GetView<HomePageController> {
  var colorIndex = 0;
  var timer;
  HomePage() {
    timer = Timer.periodic(
        const Duration(seconds: 1),
        (Timer t) => {
              if (colorIndex > controller.viableColors.value.length)
                {colorIndex = 0},
              controller.color.value =
                  controller.viableColors.value[colorIndex],
            });
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: Container(
            color: controller.color.value,
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   // stops: const [
            //   //   0.1,
            //   //   0.4,
            //   //   0.6,
            //   //   0.9,
            //   // ],
            //   colors: [
            //     Colors.blue.shade50,
            //     Colors.blue.shade500,
            //   ],
            // )),
            child: Row(
              children: [
                buildDropdownMenu(context, IngredientCollection.wheatFoods),
                buildDropdownMenu(context, IngredientCollection.meats),
                buildDropdownMenu(context, IngredientCollection.sauces),
                Slider(
                    thumbColor: Color.lerp(Colors.red, Colors.green,
                        controller.sliderValue.value / 100),
                    min: 0,
                    max: 100,
                    value: controller.sliderValue.value,
                    onChanged: (value) => {
                          controller.sliderValue.value = value,
                          timer.cancel(),
                          print(controller.sliderValue.value),
                        })
              ],
            ),
          ),
        ));
  }

  int selectedThingyInt = 0;

  Widget buildDropdownMenu(BuildContext context, Ingredients ingredients) {
    print(ingredients.allList[selectedThingyInt].name);
    return DropdownButton<String>(
        value: ingredients.allList[selectedThingyInt].name,
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        style: const TextStyle(color: Colors.green),
        underline: Container(
          height: 2,
          color: Colors.green,
        ),
        onChanged: (value) => {
              //selectedThingyInt = ingredients.allList.indexOf(value),
            },
        items: ingredients.allList
            .map(
              (ingredient) => DropdownMenuItem<String>(
                value: ingredient.name,
                child: Text(ingredient.name),
                onTap: () => {
                  selectedThingyInt = ingredients.allList.indexOf(ingredient),
                },
              ),
            )
            .toList());
  }
}
//child: Image.asset('assets/images/minced_meat.png')

