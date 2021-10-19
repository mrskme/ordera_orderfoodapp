import 'package:ordera_orderfoodapp/Constants/Food/ingredients.dart';

import 'ingredient.dart';

class Sauces extends Ingredients {
  late Ingredient hotSauce;
  late Ingredient garlicDressing;
  late Ingredient tomatoSauce;
  late Ingredient syrup;

  Sauces() {
    hotSauce = Ingredient("hot sauce", 4);
    garlicDressing = Ingredient("garlic dressing", 5);
    tomatoSauce = Ingredient("tomato sauce", 5);
    syrup = Ingredient("syrup", 15);
    allList = [hotSauce, garlicDressing, tomatoSauce];
    allMap = mapList();
  }
}
