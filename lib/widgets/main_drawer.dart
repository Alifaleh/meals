import 'package:flutter/material.dart';

import '../screens/tab_screen.dart';
import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).canvasColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Theme.of(context).accentColor,
              child: Center(
                child: Text(
                  'Cooking up !',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            DrawerTab(
              icon: Icons.restaurant,
              title: 'Meals',
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(TabBarScreen.routeName);
              },
            ),
            DrawerTab(
              icon: Icons.settings,
              title: 'Filters',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Filters.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerTab extends StatelessWidget {
  const DrawerTab({
    Key key,
    @required this.icon,
    @required this.onTap,
    @required this.title,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.blueGrey[900],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }
}
