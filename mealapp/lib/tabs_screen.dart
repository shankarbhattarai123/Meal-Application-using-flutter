import 'package:flutter/material.dart';
import './catogories_screen.dart';
import './favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CategoriesScreen(),
    FavouriteScreen(),
    FavouriteScreen(),
    FavouriteScreen(),
    FavouriteScreen()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 5,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       bottom: TabBar(
    //         tabs: [
    //           Tab(icon: Icon(Icons.category)),
    //           Tab(icon: Icon(Icons.favorite)),
    //           Tab(icon: Icon(Icons.star)),
    //           Tab(icon: Icon(Icons.alarm)),
    //           Tab(icon: Icon(Icons.notifications)),
    //         ],
    //       ),
    //       title: Text(
    //         "Meal App",
    //         style: TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
    //       ),
    //     ),
    //     body: TabBarView(children: [
    //       CategoriesScreen(),
    //       FavouriteScreen(),
    //       FavouriteScreen(),
    //       FavouriteScreen(),
    //       FavouriteScreen()
    //     ]),
    //   ),
    // );

    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.category, color: Colors.black),
            title: Text(
              'Categories',
              style: TextStyle(color: Colors.black),
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Colors.black),
            title: Text(
              'Favourite',
              style: TextStyle(color: Colors.black),
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.black),
            title: Text(
              'messages',
              style: TextStyle(color: Colors.black),
            ),
          ),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white),
          new BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
