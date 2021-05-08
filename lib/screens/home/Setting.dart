import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting();
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        color: Colors.green,
        padding: EdgeInsets.all(50.0),
        child: Text('Setting', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      ),
    );
  }
}



// class WorkoutsScreen extends StatefulWidget {
//   WorkoutsScreen();
//   @override
//   WorkoutsScreenState createState() => WorkoutsScreenState();
// }
//
// class WorkoutsScreenState extends State<WorkoutsScreen> {
//   @override
//   Widget build(BuildContext ctx) {
//     return Center(
//       child: Container(
//         color: Colors.red,
//         padding: EdgeInsets.all(50.0),
//         child: Text('Workouts', style: TextStyle(color: Colors.white, fontSize: 24.0)),
//       ),
//     );
//   }
// }