import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meals_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {

  int selectedPageIndex = 0;

  final List<Meal> favoriteMeals = [];

  void toggleFavorite(Meal meal) {

    final isExisting = favoriteMeals.contains(meal);

    if (isExisting) {
      favoriteMeals.remove(meal);
    } else {
      favoriteMeals.add(meal);
    }

    setState(() {});
  }

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget activePage = CategoriesScreen(
      onToggleFavorite: toggleFavorite,
    );

    var activePageTitle = 'Categories';

    if (selectedPageIndex == 1) {

      activePage = MealsScreen(
        meals: favoriteMeals,
        onToggleFavorite: toggleFavorite,
      );

      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        currentIndex: selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}