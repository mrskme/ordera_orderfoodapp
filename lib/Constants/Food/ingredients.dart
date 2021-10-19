import 'ingredient.dart';

abstract class Ingredients {
  late List<Ingredient> allList;
  late Map<Ingredient, String> allMap;

  Ingredients();

  Map<Ingredient, String> mapList() =>
      {for (var ingredient in allList) ingredient: ingredient.name};
}
