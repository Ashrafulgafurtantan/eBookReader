import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;

  final double verticlePadding=16;
  final double fontSize;
  final double width;
  RoundedButton({this.text,this.press,this.fontSize,this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: verticlePadding,horizontal: 30),
        padding: EdgeInsets.symmetric(vertical: verticlePadding,horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(offset: Offset(0,15),
              blurRadius: 30,
              color: Color(0xff666666).withOpacity(0.11),
            )
            ]
        ),
        child: Text(text,style: TextStyle(
            fontSize: fontSize,fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}

