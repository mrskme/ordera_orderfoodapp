import 'package:flutter/material.dart';
import 'package:ordera_orderfoodapp/Constants/Food/ingredient.dart';

class Recipe {
  List<Ingredient> ingredients;

  Recipe(this.ingredients);

  void addIngredient(Ingredient ingredient) {
    ingredients.add(ingredient);
  }
}
