import 'package:flutter/material.dart';
import 'package:flutter_appnew/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {





  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _lactoseFree = false;
  bool _vegan = false;
  bool _vegetarian = false;

  Widget buildSwitchListTile(String title, String description, bool currentValue, Function updateValue){
    return  SwitchListTile(
      activeColor: Colors.purple,
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: (){}
              )
        ],
        backgroundColor: Colors.purple,
        title: Text(
          'Your Filters',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust Your Meal Selection.',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
              buildSwitchListTile(
                  'Gluten-Free',
                  'only include gluten-free meals',
                  _glutenFree,
                  (newValue){setState(() {
                    _glutenFree = newValue;
                  });}
              ),
                buildSwitchListTile(
                    'Lactose-Free',
                    'only include lactose-free meals',
                    _lactoseFree,
                        (newValue){setState(() {
                      _lactoseFree = newValue;
                    });}
                ),
                buildSwitchListTile(
                    'Vegetarian',
                    'only include vegetarian meals',
                    _vegetarian,
                        (newValue){setState(() {
                      _vegetarian = newValue;
                    });}
                ),
                buildSwitchListTile(
                    'Vegan',
                    'only include vegan meals',
                    _vegan,
                        (newValue){setState(() {
                      _vegan = newValue;
                    });}
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
