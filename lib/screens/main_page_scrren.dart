import 'package:flutter/material.dart';
import 'package:food_app/widgets/foodListView.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

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
                        image: AssetImage('assets/tuxedo.png'),
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
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 200.0,
              child: FoodListView(),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey.withOpacity(0.5),
                  labelStyle: GoogleFonts.notoSans(
                      fontSize: 16.0, fontWeight: FontWeight.w700),
                  unselectedLabelStyle: GoogleFonts.notoSans(
                      fontSize: 12.0, fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(child: Text('FEATURED')),
                    Tab(child: Text('COMBO')),
                    Tab(child: Text('FAVORITES')),
                    Tab(child: Text('RECOMMENDED')),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
