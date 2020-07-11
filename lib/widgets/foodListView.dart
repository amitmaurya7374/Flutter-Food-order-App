import 'package:flutter/material.dart';
import 'package:food_app/models/food_data.dart';
import 'package:food_app/screens/detail_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: InkWell(
              onTap: () {
                final providePath =
                    Provider.of<FoodData>(context,listen: false).foodItems[index];
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            imgPath: providePath.imagePath,
                            foodName: providePath.name,
                            heroTag: providePath.name,
                            pricePerItem: providePath.price,
                          ),),
                );
              },
              child: Container(
                height: 175.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  color: Provider.of<FoodData>(context).foodItems[index].color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Hero(
                      tag: Provider.of<FoodData>(context).foodItems[index].name,
                      child: Container(
                        height: 75,
                        width: 75.0,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            Provider.of<FoodData>(context)
                                .foodItems[index]
                                .imagePath,
                            height: 50.0,
                            width: 50.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      Provider.of<FoodData>(context).foodItems[index].name,
                      style: GoogleFonts.notoSans(
                        fontSize: 17.0,
                        color: Color(0xFFDA9551),
                      ),
                    ),
                    Text(
                      '\$' +
                          Provider.of<FoodData>(context)
                              .foodItems[index]
                              .price
                              .toString(),
                      style: GoogleFonts.notoSans(
                        fontSize: 17.0,
                        color: Color(0xFFDA9551),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
      itemCount: Provider.of<FoodData>(context).foodCount,
    );
  }
}
