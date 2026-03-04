import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';

const availableCategories = [
  Category(id: 'c1', title: 'Italian', color: Colors.purple),
  Category(id: 'c2', title: 'Quick & Easy', color: Colors.red),
  Category(id: 'c3', title: 'Hamburgers', color: Colors.orange),
  Category(id: 'c4', title: 'German', color: Colors.amber),
  Category(id: 'c5', title: 'Light & Lovely', color: Colors.blue),
  Category(id: 'c6', title: 'Exotic', color: Colors.green),
  Category(id: 'c7', title: 'Breakfast', color: Colors.lightBlue),
  Category(id: 'c8', title: 'Asian', color: Colors.lightGreen),
  Category(id: 'c9', title: 'French', color: Colors.pink),
  Category(id: 'c10', title: 'Summer', color: Colors.teal),
];

const dummyMeals = [

  Meal(
    id: 'm1',
    categories: ['c1','c2'],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9',
    duration: 20,
    ingredients: ['Tomatoes','Olive Oil','Onion','Spaghetti','Spices'],
    steps: [
      'Cut the tomatoes and onion into small pieces.',
      'Bring a large pot of water to a boil.',
      'Add salt to the boiling water.',
      'Place the spaghetti into the boiling water.',
      'Cook the spaghetti for about 10-12 minutes.',
      'Heat olive oil in a pan.',
      'Add chopped onions and sauté until soft.',
      'Add tomatoes and spices.',
      'Let the sauce simmer for a few minutes.',
      'Drain the spaghetti.',
      'Serve spaghetti with the tomato sauce.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm2',
    categories: ['c2','c7'],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1551782450-a2132b4ba21d',
    duration: 15,
    ingredients: ['Flour','Milk','Eggs','Sugar'],
    steps: [
      'Add flour into a mixing bowl.',
      'Pour milk slowly while mixing.',
      'Crack eggs into the mixture.',
      'Add sugar and mix everything well.',
      'Heat a frying pan with a little oil.',
      'Pour batter into the pan.',
      'Cook until bubbles appear.',
      'Flip the pancake carefully.',
      'Cook the other side until golden.',
      'Serve pancakes warm.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm3',
    categories: ['c3'],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd',
    duration: 45,
    ingredients: ['Meat','Burger Buns','Tomato','Onion'],
    steps: [
      'Form ground meat into burger patties.',
      'Season the patties with salt and pepper.',
      'Heat a frying pan or grill.',
      'Cook the patties for about 4 minutes each side.',
      'Slice tomatoes and onions.',
      'Toast burger buns lightly.',
      'Place cooked patty on the bun.',
      'Add tomato and onion slices.',
      'Close the burger with the top bun.',
      'Serve immediately.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm4',
    categories: ['c5','c10'],
    title: 'Salmon Salad',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1604909052743-94e838986d24',
    duration: 15,
    ingredients: ['Salmon','Salad','Olive Oil','Mustard'],
    steps: [
      'Wash the salad leaves carefully.',
      'Cut smoked salmon into small pieces.',
      'Place salad leaves into a bowl.',
      'Add salmon pieces on top.',
      'Mix olive oil and mustard to make dressing.',
      'Pour dressing over the salad.',
      'Toss the salad gently.',
      'Season with salt and pepper.',
      'Serve the salad fresh.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm5',
    categories: ['c8'],
    title: 'Asian Stir Fry',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1512058564366-18510be2db19',
    duration: 25,
    ingredients: ['Chicken','Vegetables','Soy Sauce'],
    steps: [
      'Cut chicken into small strips.',
      'Chop vegetables into bite-size pieces.',
      'Heat oil in a wok or frying pan.',
      'Add chicken and cook until browned.',
      'Add vegetables and stir fry quickly.',
      'Pour soy sauce over the mixture.',
      'Continue stir frying for a few minutes.',
      'Taste and adjust seasoning.',
      'Serve hot with rice.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm6',
    categories: ['c4'],
    title: 'German Sausage',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1606755962773-d324e0a13086',
    duration: 30,
    ingredients: ['Sausage','Bread','Mustard'],
    steps: [
      'Preheat the grill or pan.',
      'Place sausages on the grill.',
      'Cook sausages until browned.',
      'Turn them occasionally while cooking.',
      'Warm bread rolls slightly.',
      'Place sausage inside the bread.',
      'Add mustard on top.',
      'Serve the sausage sandwich hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm7',
    categories: ['c9'],
    title: 'French Croissant',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b',
    duration: 40,
    ingredients: ['Flour','Butter','Milk'],
    steps: [
      'Prepare dough using flour and milk.',
      'Add butter and knead the dough.',
      'Roll the dough into thin layers.',
      'Fold the dough several times.',
      'Shape the dough into croissants.',
      'Place croissants on baking tray.',
      'Bake in a preheated oven.',
      'Bake until golden brown.',
      'Let them cool slightly.',
      'Serve fresh croissants.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm8',
    categories: ['c6'],
    title: 'Exotic Fruit Bowl',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1562967916-eb82221dfb92',
    duration: 10,
    ingredients: ['Mango','Dragon Fruit','Pineapple'],
    steps: [
      'Wash all fruits carefully.',
      'Peel the mango and pineapple.',
      'Cut fruits into small cubes.',
      'Slice dragon fruit into pieces.',
      'Place fruits into a bowl.',
      'Mix fruits gently together.',
      'Chill in refrigerator if desired.',
      'Serve the fruit bowl fresh.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

];