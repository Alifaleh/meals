import 'package:flutter/material.dart';

void main() {
  runApp(Meals());
}

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
