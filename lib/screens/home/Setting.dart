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
    return Scaffold(
        body: Container(
             child : Column(
              /// https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
                 children: [
                   Container(
                     child: Container(
                         color: Colors.blue,
                         height: 200,
                         width: double.infinity,
                         padding: EdgeInsets.all(50.0),

                       )

                     ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width / 1.2,
                         margin: EdgeInsets.only(top: 30),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           color: Colors.grey.withOpacity(.3),
                         ),
                         child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                             child: TextField(
                              decoration: InputDecoration(
                                 icon: Icon(Icons.email_outlined),
                                 fillColor: Colors.white,
                                 border: InputBorder.none,
                                 hintText: "Email"),
                             ),
                         ),
                       ),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width / 1.2,
                         margin: EdgeInsets.only(top: 30),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           color: Colors.grey.withOpacity(.3),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                           child: TextField(
                             decoration: InputDecoration(
                                 icon: Icon(Icons.person_rounded),
                                 fillColor: Colors.white,
                                 border: InputBorder.none,
                                 hintText: "Name"),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width / 1.2,
                         margin: EdgeInsets.only(top: 30),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           color: Colors.grey.withOpacity(.3),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                           child: TextField(
                             decoration: InputDecoration(
                                 icon: Icon(Icons.phone),
                                 fillColor: Colors.white,
                                 border: InputBorder.none,
                                 hintText: "Name"),
                           ),
                         ),
                       ),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width / 1.2,
                         margin: EdgeInsets.only(top: 30),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25),
                           color: Colors.grey.withOpacity(.3),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                           child: TextField(
                             decoration: InputDecoration(
                                 icon: Icon(Icons.person_rounded),
                                 fillColor: Colors.white,
                                 border: InputBorder.none,
                                 hintText: "Name"),
                           ),
                         ),
                       ),
                     ],
                   ),




                 ],






          )


            //  body: Center(child: Column(children: [data(context)]))
        )

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