import 'package:ebook_reader/constants.dart';
import 'package:ebook_reader/screens/home_screen.dart';
import 'package:ebook_reader/widgets/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book App",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        )
      ),
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
            
            
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            RichText(text: TextSpan(
            style: Theme.of(context).textTheme.display3,
              children: [
                TextSpan(text: "flamin"),
                TextSpan(text: "go.",style: TextStyle(
                  fontWeight: FontWeight.bold,
                ))

              ]
            ),
            ),
            RoundedButton(text: "Start reading",press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
              width: MediaQuery.of(context).size.width*0.6,fontSize: 20,)
          ],
        )
      ),
    );
  }
}
