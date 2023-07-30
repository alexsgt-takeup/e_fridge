import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

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
                "Nombre personne",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        )),
      ]),
    );

    Widget ingredientsSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(
                children: [
                  Text(
                    "Ingredient 1",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Ingredient 2",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        )),
      ]),
    );

    Widget stepsSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(
                children: [
                  Text(
                    "Step 1",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Step 2",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        )),
      ]),
    );

    Widget divider = Divider(
      height: 20,
      thickness: 0.5,
      indent: 40,
      endIndent: 40,
      color: Colors.black,
    );

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Nom recette"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.edit),
        ),
        body: ListView(
          children: [
            Hero(
              tag: "imagerecipe${"recipe.name"}",
              child: CachedNetworkImage(
                imageUrl:
                    "https://img.cuisineaz.com/660x660/2016/04/28/i18845-oeufs-brouilles.jpg",
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
