import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_item.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'package:flutter_recipe_app/recipe_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
      ),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Icon(
              CupertinoIcons.search,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ), // 여백
            Icon(
              CupertinoIcons.heart,
              size: 30,
              color: Colors.red,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem('assets/images/coffee.jpg', 'Coffee'),
              RecipeListItem('assets/images/burger.jpg', 'Burger'),
              RecipeListItem('assets/images/pizza.jpg', 'Pizza'),
            ],
          ),
        ));
  }
}
