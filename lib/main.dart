import 'package:flutter/material.dart';
import 'recipes.dart';
import 'recipePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Thanksgiving Recipes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = <Widget>[group(Type.turkey), group(Type.dessert), group(Type.drinks)];
  Type _selection = Type.turkey;

  void onTap(int i) {
    setState(() {
      switch (i) {
        case 0:
          _selection = Type.turkey;
          break;
        case 1:
          _selection = Type.dessert;
          break;
        case 2:
          _selection = Type.drinks;
          break;
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Navigator')),
      body: Center(
        child: pages[_selection.index]
      ),
      backgroundColor: const Color.fromARGB(255, 117, 70, 9),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selection.index,
        onTap: onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.food_bank_outlined), label: "turkey"),
          BottomNavigationBarItem(icon: Icon(Icons.cake_outlined), label: "dessert"),
          BottomNavigationBarItem(icon: Icon(Icons.local_drink_outlined), label: "drinks")

        ]
      ),
    );
  }
} 

Widget group(Type category) {
  List<Recipe> catList = Recipe.recipes.where((r) => r.type == category).toList();
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (BuildContext context, int c) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return RecipePage(recipe: catList[c]);
              } 
            )
          );
        },
      child: card(c, category)
      );
    }
  );
}

Widget card(int c, Type category) {
  List<Recipe> catList = Recipe.recipes.where((r) => r.type == category).toList();
  return Card(
    color: Colors.orange,
    child: Column(
      children: [
        Image(image: AssetImage(catList[c].image)),
        Text(catList[c].name)
      ]
    )
  );
}