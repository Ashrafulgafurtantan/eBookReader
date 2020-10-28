import 'package:ebook_reader/constants.dart';
import 'package:ebook_reader/widgets/bookRating.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit:BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [

            SizedBox(height: size.height*0.1,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24),
              child: RichText(text: TextSpan(
                style: Theme.of(context).textTheme.display1,
                children: [
                  TextSpan(text: "What are you \nreading "),
                  TextSpan(text: "today?",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  )
                ]
              )),
            ),
            SizedBox(height: 30,),
            Container(
              height: 245,
              width: 202,
              child: Stack(
                children: [
                  Positioned(
                    bottom:0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 221,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,10),
                            blurRadius: 33,
                            color: kShadowColor,
                          )
                        ]
                      ),
                    ),
                  ),
                  Image.asset("assets/images/book-1.png",
                  width: 150,
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                  child: Column(
                    children:<Widget> [
                      IconButton(icon: Icon(Icons.favorite_border), onPressed: (){

                      }
                      ),
                      BookRating(rate: "4.9",),
                      
                    ],
                  ))
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
