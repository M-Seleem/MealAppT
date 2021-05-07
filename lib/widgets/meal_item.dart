import 'package:flutter/material.dart';
import 'package:flutter_appnew/models/meal.dart';
import 'package:cupertino_icons/cupertino_icons.dart';



class MealItem extends StatelessWidget {
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final String title;
  final int duration;
  final String id;

   const MealItem({
      @required this.imageUrl,
      @required this.title,
      @required this.affordability,
      @required this.complexity,
      @required this.duration,
      @required this.id
  });

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.network(
                      imageUrl,
                   height: 200,
                   width: double.infinity,
                   fit: BoxFit.cover,

                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
