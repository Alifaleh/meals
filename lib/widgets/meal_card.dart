import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../models/dummy_data.dart';

import '../screens/recipes_screen.dart';

class MealCard extends StatelessWidget {
  final String id;
  MealCard({@required this.id});
  @override
  Widget build(BuildContext context) {
    Meal meal = dummyMeals.where((meal) {
      return meal.id == id;
    }).toList()[0];
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.of(context).pushNamed(
          RecipesScreen.routeName,
          arguments: {'id': this.id},
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      meal.imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 300,
                      color: Colors.black54,
                      child: Text(
                        meal.title,
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.schedule),
                        Text('${meal.duration} min'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.work),
                        Text('${meal.getComplexity()}'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.attach_money),
                        Text('${meal.getAffordability()}'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
