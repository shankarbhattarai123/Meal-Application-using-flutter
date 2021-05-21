import 'package:flutter/material.dart';
import './tabs_screen.dart';
import './filter_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black26,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 120,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                ),
                child: Text(
                  'Options',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.category_sharp),
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 25),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabsScreen()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.filter),
                title: Text(
                  'Filter',
                  style: TextStyle(fontSize: 25),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FilterScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
