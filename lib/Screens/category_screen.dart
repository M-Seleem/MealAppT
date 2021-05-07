import 'package:flutter/material.dart';
import 'package:flutter_appnew/widgets/dummy_data.dart';
import 'package:flutter_appnew/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (fetch) =>
                  CategoryItem(fetch.id, fetch.title, fetch.color),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 30),
      ),
    );
  }
}
