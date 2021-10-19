import 'package:ordera_orderfoodapp/Constants/Food/ingredients.dart';

import 'ingredient.dart';

class WheatFoods extends Ingredients {
  late Ingredient burgerBun;
  late Ingredient spaghetti;
  late Ingredient briocheBun;
  late Ingredient pancakes;

  WheatFoods() {
    burgerBun = Ingredient("buger bun", 10);
    spaghetti = Ingredient("spaghetti", 10);
    briocheBun = Ingredient("brioche bun", 12);
    pancakes = Ingredient("pancakes", 30);

    allList = [burgerBun, spaghetti, briocheBun, pancakes];
    var list2 = {for (var kake in allList) kake};
    allMap = mapList();
  }
}
