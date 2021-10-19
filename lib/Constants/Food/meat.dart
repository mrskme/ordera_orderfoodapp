import 'package:ordera_orderfoodapp/Constants/Food/ingredients.dart';

import 'ingredient.dart';

class Meats extends Ingredients {
  late Ingredient mincedMeat;
  late Ingredient burger;
  late Ingredient chickenBurger;
  late Ingredient steak;
  late Ingredient meatBalls;

  Meats() {
    mincedMeat = Ingredient("minced meat", 25);
    burger = Ingredient("burger", 20);
    chickenBurger = Ingredient("chicken burger", 20);
    steak = Ingredient("steak", 20);
    meatBalls = Ingredient("meat balls", 25);

    allList = [mincedMeat, burger, chickenBurger, steak];
    allMap = mapList();
  }
}
