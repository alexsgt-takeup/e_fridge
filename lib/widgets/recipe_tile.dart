import 'package:flutter/material.dart';

class RecipeTile extends StatelessWidget {
  final String recipeName;
  final int recipePerson;

  const RecipeTile({
    super.key,
    required this.recipeName,
    required this.recipePerson,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Center(
        child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text("$recipeName pour $recipePerson personne(s)")),
      ),
    );
  }
}
