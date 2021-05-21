import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final categoryMeals;
  MealDetailsScreen(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian,
      @required this.categoryMeals});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontFamily: 'OpenSans'),
        ),
      ),
      body: SingleChildScrollView(
          child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        margin: EdgeInsets.all(5),
        child: Container(
          color: Colors.green.shade200,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingredients:",
                      style: TextStyle(fontSize: 35),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: ingredients
                                .map(
                                  (e) => Text(
                                    e,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                )
                                .toList()),
                      ],
                    ),
                  ],
                ),
              ),

              //////
              ///

              // ListView.builder(
              //     itemCount: steps.length,
              //     itemBuilder: (context, index) {
              //       return ListTile(title: Text(steps[index]));
              //     }),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Order Now",
                    style: TextStyle(fontSize: 35, color: Colors.black)),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      )),
    );
  }
}
