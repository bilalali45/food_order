import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Histroy extends StatefulWidget {
  Histroy();
  @override
  HistroyState createState() => HistroyState();
}

class HistroyState extends State<Histroy> {
  final List<String> entries = <String>['A', 'B', 'C'];

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      title: "title",
      home: Scaffold(
       body: Container(
           color: Colors.white,
           child: Center(
               child: ListView.builder(
                   padding: const EdgeInsets.all(8),
                   itemCount: entries.length,
                   itemBuilder: (BuildContext context, int index) {
                     return Container(

                       height: 100,
                       //color: Colors.amber[colorCodes[index]],
                       child: Center(
                         /// child: Text('Entry ${entries[index]}')

                           child: Container(
                             margin: EdgeInsets.all(10),
                             padding: EdgeInsets.all(10),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 border: Border.all(
                                     color: Colors.white, // Set border color
                                     width: 3.0),   // Set border width
                                     borderRadius: BorderRadius.all(
                                     Radius.circular(10.0)), // Set rounded corner radius
                                    boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                             ),
                             child: Text('Entry ${entries[index]}'),
                           )

                       ),
                     );
                   }

               )

           ),
         ),

      )

    );

  }
}
