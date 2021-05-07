import 'package:flutter/material.dart';
import 'package:flutter_appnew/widgets/dummy_data.dart';
import 'package:flutter_appnew/widgets/meal_item.dart';
import 'package:flutter_appnew/models/meal.dart';



class MealsScreen extends StatefulWidget {
  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple ,
        title: Text(
          categoryTitle,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemBuilder: (ctx, index){
          return MealItem(
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            id: categoryMeals[index].id,
          );
        },
        itemCount: categoryMeals.length,
      ) ,
    );
  }
}
