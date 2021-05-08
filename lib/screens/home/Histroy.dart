import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Histroy extends StatefulWidget {
  Histroy();
  @override
  HistroyState createState() => HistroyState();
}

class HistroyState extends State<Histroy> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        color: Colors.red,
        padding: EdgeInsets.all(50.0),
        child: Text('Workouts', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      ),
    );
  }
}
