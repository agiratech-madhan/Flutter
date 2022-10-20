// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:meals_app/Widgets/mealitem.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Meal> availableMeals;
  const CategoryMealsScreen({
    Key? key,
    required this.availableMeals,
  }) : super(key: key);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categorytitle;
  List<Meal>? displayedMeals;
  var loadedInitData = false;
  void removeMeal(String mealId) {
    setState(() {
      displayedMeals!.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    // it will run couple of time after initializtion
    if (!loadedInitData) {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      final categoryid = routeArgs['id'];
      categorytitle = routeArgs['title'] as String;
      // print(categorytitle);

      displayedMeals = widget.availableMeals
          .where((meal) => meal.categories.contains(categoryid))
          .toList();
      loadedInitData = true;
    }
    //without checking true false the deletion wont work becoz it run sometimes again and again
    super.didChangeDependencies();
  }

  // final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(categorytitle.toString()),
            // Text(categorytitle.toString()),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              id: displayedMeals![index].id,
              title: displayedMeals![index].title,
              imageUrl: displayedMeals![index].imageUrl,
              duration: displayedMeals![index].duration,
              complexity: displayedMeals![index].complexity,
              affordability: displayedMeals![index].affordability,
              removeItem: removeMeal);
        },
        itemCount: displayedMeals!.length,
      ),
    );
  }
}
