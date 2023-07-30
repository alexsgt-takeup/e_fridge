import 'package:flutter/material.dart';
import '../data/dummy_recipes.dart';
import '../widgets/recipe_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Rechercher"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: dummyRecipeList.length,
          itemBuilder: (context, index) {
            return RecipeTile(
              recipeName: dummyRecipeList[index].name,
              recipePerson: dummyRecipeList[index].personnQuantity,
            );
          }),
    );
  }
}
