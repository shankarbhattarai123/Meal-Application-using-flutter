import 'package:flutter/material.dart';
import './dummy_data.dart';
import './meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String title;
  final String id;
  CategoryMealsScreen(this.title, this.id);
  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(id))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(fontSize: 25)),
      ),
      body: Container(
          child: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              categories: categoryMeals[index].categories,
              imageUrl: categoryMeals[index].imageUrl,
              ingredients: categoryMeals[index].ingredients,
              steps: categoryMeals[index].steps,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
              isGlutenFree: categoryMeals[index].isGlutenFree,
              isLactoseFree: categoryMeals[index].isLactoseFree,
              isVegan: categoryMeals[index].isVegan,
              isVegetarian: categoryMeals[index].isVegetarian,
              categoryMeals: categoryMeals);
        },
      )),
    );
  }
}
