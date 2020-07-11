import 'package:flutter/material.dart';
import 'package:food_app/widgets/floating_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  // static const nameRoutes = 'detail-page';
  final imgPath, foodName, pricePerItem, heroTag;
  DetailPage({this.foodName, this.heroTag, this.imgPath, this.pricePerItem});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 45.0,
                      width: 45.0,
                      color: Colors.transparent,
                    ),
                    Container(
                      height: 40.0,
                      width: 42.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0XFFFE7D6A).withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 4.0,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                        color: Color(0XFFFE7D6A),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 1.0,
                      right: 4.0,
                      child: Container(
                        height: 14.0,
                        width: 14.0,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.notoSans(
                              fontSize: 10.0,
                              textStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'SUPER',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              widget.foodName.toString().toUpperCase(),
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w800, fontSize: 27.0),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Hero(
                tag: widget.heroTag,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.imgPath,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                children: <Widget>[
                  FloatingIcon(
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  FloatingIcon(
                    icon: Icons.restore,
                  ),
                 
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

            ],
          ),
        ],
      ),
    );
  }
}

