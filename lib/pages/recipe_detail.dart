import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_fridge/model/recipe_ingredient_model.dart';
import 'package:flutter/material.dart';

import '../model/recipe_model.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget nbPersonSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                recipe.numberOfServings > 1
                    ? "Pour ${recipe.numberOfServings} personnes"
                    : "Pour ${recipe.numberOfServings} personne",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        )),
      ]),
    );

    Widget ingredientsSection = Column(children: [
      ListView.builder(
          shrinkWrap: true,
          itemCount: recipe.ingredients.length,
          itemBuilder: (context, index) {
            return Text(recipe.ingredients[index].measure != null
                ? "${recipe.ingredients[index].quantity.round()} ${recipe.ingredients[index].measure} de ${recipe.ingredients[index].ingredient}"
                : "${recipe.ingredients[index].quantity.round()} ${recipe.ingredients[index].ingredient}");
          })
    ]);

    Widget stepsSection = Column(children: [
      ListView.builder(
          shrinkWrap: true,
          itemCount: recipe.steps.length,
          itemBuilder: (context, index) {
            return Text(
                "Etape ${recipe.steps[index].order} : ${recipe.steps[index].description}");
          })
    ]);

    Widget divider = const Divider(
      height: 20,
      thickness: 0.5,
      indent: 40,
      endIndent: 40,
      color: Colors.black,
    );

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(recipe.name),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.edit),
        ),
        body: ListView(
          children: [
            Hero(
              tag: "imagerecipe${recipe.name}",
              child: CachedNetworkImage(
                imageUrl: recipe.imgPath ?? "",
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
                width: 600,
                height: 400,
                fit: BoxFit.cover,
              ),
            ),
            nbPersonSection,
            divider,
            ingredientsSection,
            divider,
            stepsSection
          ],
        ));
  }
}
