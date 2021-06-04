import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnew/widgets/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {

  Widget buildSectionTitle(BuildContext context, String text){
    return Container(margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget buildContainer(Widget child){
    return Container( decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10)
    ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      height: 150,
      width: 300,
      child: child,
    );

  }


  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id==mealid);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedMeal.title
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover,),
            ),
            buildSectionTitle(context, 'Ingredients'),
          buildContainer( ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Colors.purpleAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    selectedMeal.ingredients[index],
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              itemCount: selectedMeal.ingredients.length),),
            buildSectionTitle(context, 'Steps'),
            buildContainer( ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Text(
                          '# ${index+1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    Divider(color: Colors.grey,)
                  ],
                ),
                itemCount: selectedMeal.steps.length),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed:(){Navigator.of(context).pop(mealid);} ,
        child: Icon(Icons.delete),
      ),
    );
  }
}
