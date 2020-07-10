import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:food_app/models/food.dart';

class FoodData extends ChangeNotifier {
  List<Food> _foodItems = [
    Food(name: 'Burger', price: 20.0, imagePath: 'assets/burger.png',color: Color(0XFFFFEAC5)),
    Food(name: 'Cheese', price: 20.0, imagePath: 'assets/cheese.png',color: Color(0XFFFCD7F7)),
    Food(name: 'Doughnut', price: 20.0, imagePath: 'assets/doughnut.png',color:Color(0XFFD7FBD9)),
    Food(name: 'fries', price: 20.0, imagePath: 'assets/fries.png',color:Color(0XFFC3E3FF)),
    Food(name: 'HotDog', price: 20.0, imagePath: 'assets/hotdog.png',color:Color(0XFFFFE4E0)),
    Food(name: 'Pizza', price: 20.0, imagePath: 'assets/pizza.png',color: Color(0XFFFFE4E0)),
    Food(name: 'PopCorn', price: 20.0, imagePath: 'assets/popcorn.png',color: Color(0XFFFED6CF)),
    Food(name: 'SandWich', price: 20.0, imagePath: 'assets/sandwich.png',color: Color(0XFFC5F6C5)),
    Food(name: 'Taco', price: 20.0, imagePath: 'assets/taco.png',color: Color(0XFFC4E2FD)),
    Food(name: 'Tuxedo', price: 20.0, imagePath: 'assets/tuxedo.png'),
  ];
  UnmodifiableListView<Food> get foodItems{
    return UnmodifiableListView(_foodItems);
  }
  int get foodCount{
    return _foodItems.length;
  }
}
