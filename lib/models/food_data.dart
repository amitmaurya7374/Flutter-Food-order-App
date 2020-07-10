import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:food_app/models/food.dart';

class FoodData extends ChangeNotifier {
  List<Food> _foodItems = [
    Food(name: 'Burger', price: 20.0, imagePath: 'assets/burger.png'),
    Food(name: 'Cheese', price: 20.0, imagePath: 'assets/cheese.png'),
    Food(name: 'Doughnut', price: 20.0, imagePath: 'assets/doughnut.png'),
    Food(name: 'fries', price: 20.0, imagePath: 'assets/fries.png'),
    Food(name: 'HotDog', price: 20.0, imagePath: 'assets/hotdog.png'),
    Food(name: 'Pizza', price: 20.0, imagePath: 'assets/pizza.png'),
    Food(name: 'PopCorn', price: 20.0, imagePath: 'assets/popcorn.png'),
    Food(name: 'SandWich', price: 20.0, imagePath: 'assets/sandwich.png'),
    Food(name: 'Taco', price: 20.0, imagePath: 'assets/taco.png'),
    Food(name: 'Tuxedo', price: 20.0, imagePath: 'assets/tuxedo.png'),
  ];
  UnmodifiableListView<Food> get foodItems{
    return UnmodifiableListView(_foodItems);
  }
  int get foodCount{
    return _foodItems.length;
  }
}
