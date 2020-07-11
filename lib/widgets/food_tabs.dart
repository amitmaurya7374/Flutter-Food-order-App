import 'package:flutter/material.dart';
import 'package:food_app/models/food_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all( 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color:
                        Provider.of<FoodData>(context).foodItems[index].color,
                  ),
                  child: Center(
                    child: Image.asset(
                      Provider.of<FoodData>(context).foodItems[index].imagePath,
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 3.0,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Provider.of<FoodData>(context).foodItems[index].name,
                      style: GoogleFonts.notoSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {},
                      starCount: 5,
                      rating: 4.5,
                      color: Color(0xFFFFD143),
                      borderColor: Color(0xFFFFD143),
                      size: 15.0,
                      spacing: 0.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$' +
                              Provider.of<FoodData>(context)
                                  .foodItems[index]
                                  .price
                                  .toString(),
                          style: GoogleFonts.notoSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(
                              color: Color(0xFFF68D7F),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          '\$' + '25',
                          style: GoogleFonts.notoSans(
                            fontSize: 12.0,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w600,
                            textStyle: TextStyle(
                              color: Colors.grey.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                 Container(
                   width: 55.0,
                   child: RaisedButton(
              // heroTag: 'btn1',
              // mini: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              color:  Color(0xFFFE7D6A),
              elevation: 10.0,
              onPressed: () {},
              child: Center(
                child: Icon(Icons.add, color: Colors.white)
              ),
              // backgroundColor: Color(0xFFFE7D6A),
            ),
                 )
              ],

            ),
          );
        },
        itemCount: Provider.of<FoodData>(context).foodCount,
      ),
      
    );
  }
}
