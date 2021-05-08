import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  Order();
  @override
  OrderState createState() => OrderState();
}

class OrderState extends State<Order> {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(50.0),
        child: Text('Order', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      ),
    );
  }
}
