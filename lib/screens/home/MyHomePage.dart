import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomText.dart';


void main() {
  runApp( MyHomePage());
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: CustomText(
          text: "Sneex",
          size: 24,
          weight: FontWeight.bold,
           )
          )
        );

    // return Scaffold(
    //     body: Center(
    //     child: Column(
    //       children:[
    //         data()
    //       ]
    //
    //     )
    //   )
    // );

    return Container(
      color: Colors.white30,
      child: GridView.count(
          crossAxisCount: 4,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <String>[
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
            'http://www.for-example.org/img/main/forexamplelogo.png',
          ].map((String url) {
            return GridTile(
                child: Image.network(url, fit: BoxFit.cover));
          }).toList()),
    );
  }



}

data() {
  var itemList;
  // return GridView.count(
  //   crossAxisCount: 4,
  //   padding: EdgeInsets.all(4.0),
  //   childAspectRatio: 8.0 / 9.0,
  //   children: itemList
  //       .map(
  //         (Item) => ItemList(item: Item),
  //   )
  //       .toList(),
  // );

  return Container(

    color: Colors.white30,
    child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <String>[
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
          'http://www.for-example.org/img/main/forexamplelogo.png',
        ].map((String url) {
          return GridTile(
              child: Image.network(url, fit: BoxFit.cover));
        }).toList()),
  );


}

