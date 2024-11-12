import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Recipes',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
