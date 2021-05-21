import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';
import './main_drawer.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meal App",
          style: TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://images.pexels.com/photos/277253/pexels-photo-277253.jpeg"),
          fit: BoxFit.cover,
        )),
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 1.2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          children: DUMMY_CATEGORIES
              .map((dumcat) =>
                  CategoryItem(dumcat.title, dumcat.color, dumcat.id))
              .toList(),
        ),
      ),
    );
  }
}
