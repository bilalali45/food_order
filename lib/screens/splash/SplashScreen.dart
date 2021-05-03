import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_order/constants/assests_image.dart';
import 'package:food_order/screens/home/MyHomePage.dart';
import 'package:food_order/widgets/loading.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => MyHomePage())));

    return Scaffold(
      backgroundColor: Colors.white,
        body: new Stack(
            children: <Widget>[
        new Container(
            constraints: BoxConstraints.expand(),
               decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image1),
                    //image: NetworkImage("https://flutter-examples.com/wp-content/uploads/2020/02/dice.jpg"),
                    fit: BoxFit.cover)


            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(splash_logo, width: 120,),
                    SizedBox(height: 10,),
                    Loading()
                  ],
              ),

    )


    // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Image.asset(splash_logo, width: 120,),
      //     SizedBox(height: 10,),
      //     Loading()
      //   ],
      // ),


       )


     ]
     )
    );
  }
}
