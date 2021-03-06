import 'package:flutter/material.dart';
import 'package:flutter_appnew/Screens/home.dart';
import 'package:flutter_appnew/Screens/filters_screens.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
   return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.purple,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meal', Icons.restaurant,(){Navigator.of(context).pushReplacementNamed('/home');}),
          buildListTile('Filters', Icons.settings,(){Navigator.of(context).pushReplacementNamed('/filters');})
        ],
      ),
    );
  }
}
