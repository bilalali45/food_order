



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  LoginPageState createState() => LoginPageState();
}


class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext ctx) {
    return
      Scaffold(
        body:  InkWell(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(50.0),
            child: Text('Login In', style: TextStyle(color: Colors.white, fontSize: 24.0)),
          ),
        )
      );

  }
}
