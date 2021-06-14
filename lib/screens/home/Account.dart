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
                          image: new NetworkImage(
                              "https://image.shutterstock.com/image-photo/young-woman-using-wireless-earphones-600w-1841881210.jpg")))),
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
                      width: 100.0,
                      height: 100.0,

                        child: Row(
                          children: [
                            Text(
                                "Email Address",textAlign: TextAlign.left,
                                 style: TextStyle(color: Colors.black38, fontSize: 12),
                                 textScaleFactor: 1.1,
                                ),

                              FlutterSwitch(
                                height: 20.0,
                                width: 40.0,
                                padding: 4.0,
                                toggleSize: 15.0,
                                borderRadius: 10.0,
                                activeColor: lets_cyan,
                                value: isToggled,
                                onToggle: (value) {
                                  setState(() {
                                    isToggled = value;
                                  });
                                },
                              ),


                          ]
                        )



                  )

              ]
        )
        )
      ]),
    ));
  }
}
