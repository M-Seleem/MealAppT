import 'package:flutter/material.dart';
import 'package:flutter_appnew/Screens/category_screen.dart';
import 'package:flutter_appnew/Screens/meals_screem.dart';
import 'package:flutter_appnew/widgets/meal_item.dart';
import 'Screens/home.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/Cscreen': (context) => CategoriesScreen(),
        '/meals': (context) => MealsScreen(),
        'mealItem': (context) =>MealItem()
      },
    );
  }
}
