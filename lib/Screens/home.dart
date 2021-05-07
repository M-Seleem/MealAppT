import 'package:flutter/material.dart';
import 'category_screen.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple  ,
        title: Text(
          'Meal App',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: CategoriesScreen(),
      backgroundColor: Colors.grey[200],
    );
  }
}
