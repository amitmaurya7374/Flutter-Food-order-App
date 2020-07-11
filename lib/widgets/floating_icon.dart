import 'package:flutter/material.dart';

class FloatingIcon extends StatelessWidget {
  final IconData icon;
  FloatingIcon({this.icon});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          // color: Colors.pink,
          height: 45.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFFE7D6A).withOpacity(0.1),
                  blurRadius: 6.0,
                  spreadRadius: 6.0,
                  offset: Offset(5.0, 11.0)),
            ],
          ),
        ),
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Center(
            child: Icon(
              icon,
              color: Color(0xFFFE7D6A),
              size: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
