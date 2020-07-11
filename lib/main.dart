import 'package:flutter/material.dart';
import 'package:food_app/models/food_data.dart';
import 'package:food_app/screens/main_page_scrren.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>FoodData(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
       home: MainPageScreen(),
      //  routes: {
      //    DetailPage.nameRoutes :(context)=>DetailPage(),
      //  },
      ),
    );
  }
}