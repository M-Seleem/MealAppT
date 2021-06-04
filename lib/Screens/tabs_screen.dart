import 'package:flutter/material.dart';
import 'package:flutter_appnew/Screens/Fav.dart';
import 'package:flutter_appnew/Screens/category_screen.dart';
import 'package:flutter_appnew/widgets/main_drawer.dart';


class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  final List<Map<String, Object>> _pages = [
    {
      'pages': CategoriesScreen(),
      'title': 'Categories'
    },
    {
      'pages': FavScreen(),
      'title': 'Your Favourites'
    }
  ];

  int _selectedIndex = 0;
  void _selectPage(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
            _pages[_selectedIndex]['title'],
          style: TextStyle(
            fontSize: 28
          ),

        ),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.purple,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('Favourite')
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }

}
