import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/constants/assests_image.dart';

class Order extends StatefulWidget {
  Order();
  @override
  OrderState createState() => OrderState();
}

class OrderState extends State<Order> {
  final List<String> entries = <String>['A', 'B', 'C'];


  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: Center(child: Column(children: [data(context)]))

    );
  }


  data(BuildContext context) {
    return Expanded(
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
                        // padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        constraints: new BoxConstraints.expand(
                        ),
                        padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),

                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.white, // Set border color
                                width: 3.0),
                            // Set border width
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0)),

                            image: new DecorationImage(
                              image: new AssetImage(background),
                              fit: BoxFit.cover,
                            ),

                            // Set rounded corner radius
                            boxShadow: [
                              BoxShadow(blurRadius: 10,
                                  color: Colors.black,
                                  offset: Offset(1, 3))
                            ] // Make rounded corner of border
                        ),
                      //  child: Text('Entry ${entries[index]}'),
                        child: Container(
                            child: new Stack(
                              children: <Widget>[
                                new Positioned(
                                  left: 0.0,
                                  bottom: 0.0,
                                  child: new Text('Title',
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                      )
                                  ),
                                ),
                                new Positioned(
                                  right: 0.0,
                                  bottom: 0.0,
                                  child: new Icon(Icons.star),
                                ),
                              ],
                            )
                        ),

                      )

                  ),
                );
              }

          )

      ),

    );
    }

  }
