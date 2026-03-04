import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({
    super.key,
    required this.meal,
    required this.onToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              onToggleFavorite(meal);
            },
            icon: const Icon(Icons.star),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            const Text(
              "Ingredients",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            Column(
              children: meal.ingredients
                  .map(
                    (ingredient) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        ingredient,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 20),

            const Text(
              "Steps",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            Column(
              children: meal.steps
                  .map(
                    (step) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 20,
                      ),
                      child: Text(
                        step,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}