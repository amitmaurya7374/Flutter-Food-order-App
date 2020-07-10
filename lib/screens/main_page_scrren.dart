import 'package:flutter/material.dart';
import 'package:food_app/models/food_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 6.0,
                          spreadRadius: 4.0,
                          offset: Offset(0.0, 3.0),
                        ),
                      ],
                      color: Color(0xFFC6E7FE),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        ///Note :List can be access by using index value
                        image: AssetImage(Provider.of<FoodData>(context)
                            .foodItems[9]
                            .imagePath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Search For ',
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Recipes ',
                style: GoogleFonts.notoSans(
                    fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.notoSans(fontSize: 14.0),
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.5),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Recommended',
                style: GoogleFonts.notoSans(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200.0,
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FoodTile();
                },
                itemCount: Provider.of<FoodData>(context).foodCount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodTile extends StatelessWidget {
  const FoodTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: InkWell(
          onTap: () {},
          child: Container(
          
            height: 175.0,
            width: 150.0,
            decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                      color: Color(0xFFFFE9C6),
                    ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: Provider.of<FoodData>(context)
                      .foodItems[index]
                      .name,
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
                  Provider.of<FoodData>(context)
                      .foodItems[index]
                      .name,
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
  }
}
