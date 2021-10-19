import 'ingredient.dart';

abstract class Ingredients {
  late String name;
  late List<Ingredient> allList;
  late Map<Ingredient, String> allMap;

  Map<Ingredient, String> mapList() =>
      {for (var ingredient in allList) ingredient: ingredient.name};
}
