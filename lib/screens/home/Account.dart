

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  Account();
  @override
  AccountState createState() => AccountState();
}

class AccountState extends State<Account> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: Container(
          child : Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child:   Row(
                  children: [
                    new Container(
                     width: 140.0,
                     height: 140.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://image.shutterstock.com/image-photo/young-woman-using-wireless-earphones-600w-1841881210.jpg")
                              )
                        )),

                   Container(
                     child : Column(

                        children: [
                                      Text(
                                            "Name",
                                             style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 12),
                                              textScaleFactor: 1.1,
                                       ),


                                        Text(
                                              "Full Name",
                                              style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 12),
                                              textScaleFactor: 1.1,
                                        ),

                                        Text(
                                          "Email Address",
                                               style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 12),
                                               textScaleFactor: 1.1,
                                        ),



                          // new Container(
                          //   width: 100.0,
                          //   height: 50.0,
                          //   child:Text(
                          //     "Full Name",
                          //     style: TextStyle(
                          //         color: Colors.black38,
                          //         fontSize: 12),
                          //          textScaleFactor: 1.1,
                          //   ),
                          //
                          // ),
                          //
                          //
                          // new Container(
                          //   width: 100.0,
                          //   height: 50.0,
                          //     child:Text(
                          //           "Email Address",
                          //            style: TextStyle(
                          //            color: Colors.black38,
                          //            fontSize: 12),
                          //            textScaleFactor: 1.1,
                          //     ),
                          //   ),



                        ],
                      )
                     )
                  ],
                ),




                )

           ]
       ),
    ));
  }
}
