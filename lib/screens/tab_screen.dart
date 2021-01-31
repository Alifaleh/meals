import 'package:flutter/material.dart';

import '../screens/categories_screen.dart';
import '../screens/favorate_screen.dart';

class TabBarScreen extends StatefulWidget {
  static const routeName = '/tabbar';
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Map<String, Object>> pages = [
    {'page': Categories(), 'title': 'Categories'},
    {'page': Favorate(), 'title': 'Your Favorates'},
  ];

  int _currentPageIndex = 0;
  _switchPages(index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pages[_currentPageIndex]['title'])),
      body: pages[_currentPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _currentPageIndex,
        // selectedFontSize: ,
        // unselectedFontSize: ,
        type: BottomNavigationBarType.shifting,
        onTap: _switchPages,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: 'Favorates',
          ),
        ],
      ),
    );
  }
}
