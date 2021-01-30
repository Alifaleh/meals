import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';

void main() {
  runApp(Meals());
}

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      home: Catigories(),
    );
  }
}
