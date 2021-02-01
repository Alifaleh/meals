import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class Filters extends StatefulWidget {
  static const routeName = '/filters';
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool _gluteenFree1 = false;
  bool _gluteenFree2 = false;
  bool _gluteenFree3 = false;
  bool _gluteenFree4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            child: Center(
              child: Text('Filter your food'),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  onChanged: (val) {
                    setState(() {
                      _gluteenFree1 = val;
                    });
                  },
                  value: _gluteenFree1,
                  subtitle: Text('only Gluteen free meals'),
                  title: Text('Gluteen free'),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    setState(() {
                      _gluteenFree2 = val;
                    });
                  },
                  value: _gluteenFree2,
                  subtitle: Text('only Gluteen free meals'),
                  title: Text('Gluteen free'),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    setState(() {
                      _gluteenFree3 = val;
                    });
                  },
                  value: _gluteenFree3,
                  subtitle: Text('only Gluteen free meals'),
                  title: Text('Gluteen free'),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    setState(() {
                      _gluteenFree4 = val;
                    });
                  },
                  value: _gluteenFree4,
                  subtitle: Text('only Gluteen free meals'),
                  title: Text('Gluteen free'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
