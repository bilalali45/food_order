import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  Account();

  @override
  AccountState createState() => AccountState();
}

class AccountState extends State<Account> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: Container(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              new Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage("https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60")))),
              Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(margin: EdgeInsets.all(10),
                        height: 20,
                         width: 80,
                        alignment: Alignment.centerLeft,
                         child: Text(
                          "Name",textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                          textScaleFactor: 1.1,
                       ),
                      ),

                        Container(margin: EdgeInsets.all(10),
                           height: 20,
                           width: 80,
                           alignment: Alignment.centerLeft,
                           child: Text(
                            "Full Name",textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black38, fontSize: 12),
                            textScaleFactor: 1.1,
                          ),
                        ),


                      Container(margin: EdgeInsets.all(10),
                        height: 20,
                        width:  100,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address",textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                          textScaleFactor: 1.1,
                        ),
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
                  ))
            ],
          ),
        ),Container(

        padding: EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                   new Container(
                       child: Row(
                           children: [

                              Expanded(
                                child: Container(
                                  width: 100,
                                  child: Text(
                                    "Notification", textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.black38, fontSize: 12),
                                    textScaleFactor: 1.1,
                                  ),

                                ),
                              ),
                                  Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                   },
                                    activeTrackColor: Colors.lightGreenAccent,
                                    activeColor: Colors.green,
                                  )
                          ]
                        )



                  ),     new Container(
                  child: Row(

                      children: [

                          Expanded(
                          child: Container(
                            width: 100,
                            child: Text(
                              "Notification", textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black38, fontSize: 12),
                              textScaleFactor: 1.1,
                            ),

                          ),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                        )
                      ]
                  ),



              ), new Container(
                child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          child: Text(
                            "Notification", textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black38, fontSize: 12),
                            textScaleFactor: 1.1,
                          ),

                        ),
                      ),
                      Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,
                      )
                    ]
                ),
              )

              ]
          )
        )
      ]),
    ));
  }
}
