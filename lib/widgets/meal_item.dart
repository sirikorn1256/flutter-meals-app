import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
    required this.onToggleFavorite,
  });

  final Meal meal;
  final void Function(Meal meal) onToggleFavorite;

  void selectMeal(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailScreen(
          meal: meal,
          onToggleFavorite: onToggleFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          selectMeal(context);
        },
        child: Stack(
          children: [

            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 16,
                ),
                child: Column(
                  children: [

                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        const Icon(Icons.schedule, size: 16, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          '${meal.duration} min',
                          style: const TextStyle(color: Colors.white),
                        ),

                        const SizedBox(width: 12),

                        const Icon(Icons.work, size: 16, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          meal.complexity.name,
                          style: const TextStyle(color: Colors.white),
                        ),

                        const SizedBox(width: 12),

                        const Icon(Icons.attach_money, size: 16, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(
                          meal.affordability.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}