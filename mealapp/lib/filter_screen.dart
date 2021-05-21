import 'package:flutter/material.dart';
import './main_drawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isglutenfree = false;
  bool vegeterian = false;
  bool vegan = false;
  bool islactosefree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        title: Text(
          "filter",
          style: TextStyle(fontSize: 40),
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Colors.orange.shade100,
        padding: EdgeInsets.only(right: 40, left: 30, top: 20),
        child: ListView(
          children: <Widget>[
            SwitchListTile(
              title: Text(
                'IsGlutenFree',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              subtitle: Text(
                "Only include Gluten free food",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              value: isglutenfree,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  isglutenfree = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                'Isvegeterian',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              subtitle: Text(
                "Only include vegeterian food",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              value: vegeterian,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  vegeterian = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                'IsVegan',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              subtitle: Text(
                "Only include vegan food",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              value: vegan,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  vegan = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(
                'IsLactoseFree',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              subtitle: Text(
                "Only include Lactose free food",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              value: islactosefree,
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  islactosefree = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
