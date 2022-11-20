import 'package:flutter/material.dart';
import 'recipes.dart';

class RecipePage extends StatefulWidget {
  final Recipe recipe;

  const RecipePage({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 101, 18),
      appBar: AppBar(title: Text('${widget.recipe.name} recipe')),
        body: Center(
          child: Container(
            width: 500,
            child: Card(
              color: Color.fromARGB(255, 223, 166, 80),
              child: Center(
                child: ListView(
                  children: [
                    Image(image: AssetImage(widget.recipe.image)),
                    Center(child: Text(widget.recipe.name, style: TextStyle(fontSize: 40))),
                    Text(widget.recipe.text),
                  ]
                )
              )
            )
          )
        )
    );
  }
}