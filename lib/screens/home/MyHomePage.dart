import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomText.dart';

void main() {
  runApp(MyHomePage());
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
          title: const Text('Food order'),
        ),

        body: Center(child: Column(children: [data(context)])));

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
            return GridTile(child: Image.network(url, fit: BoxFit.cover));
          }).toList()),
    );
  }
}

void showInSnackBar(String value, BuildContext context) {
  final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

data(BuildContext context) {
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

  return Expanded(
    // width: 50,
    // height: 50,
    //
    // color: Colors.red,
    child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(5.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <String>[
          'https://post.healthline.com/wp-content/uploads/2020/08/ways-to-make-coffee-super-healthy-1200x628-facebook-1200x628.jpg',
          'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          'https://image.freepik.com/free-vector/espresso-coffee-cup-coffee-beans_79603-1038.jpg',
          'https://post.healthline.com/wp-content/uploads/2020/08/ways-to-make-coffee-super-healthy-1200x628-facebook-1200x628.jpg',
          'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          'https://image.freepik.com/free-vector/espresso-coffee-cup-coffee-beans_79603-1038.jpg',
          'https://post.healthline.com/wp-content/uploads/2020/08/ways-to-make-coffee-super-healthy-1200x628-facebook-1200x628.jpg',
          'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          'https://image.freepik.com/free-vector/espresso-coffee-cup-coffee-beans_79603-1038.jpg',
          'https://post.healthline.com/wp-content/uploads/2020/08/ways-to-make-coffee-super-healthy-1200x628-facebook-1200x628.jpg',
          'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          'https://image.freepik.com/free-vector/espresso-coffee-cup-coffee-beans_79603-1038.jpg',
          'https://post.healthline.com/wp-content/uploads/2020/08/ways-to-make-coffee-super-healthy-1200x628-facebook-1200x628.jpg',
          'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          'https://image.freepik.com/free-vector/espresso-coffee-cup-coffee-beans_79603-1038.jpg',
          'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg',
          'https://post.healthline.com/wp-content/uploads/2020/08/ways-to-make-coffee-super-healthy-1200x628-facebook-1200x628.jpg',
          'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          'https://image.freepik.com/free-vector/espresso-coffee-cup-coffee-beans_79603-1038.jpg',
          'https://image.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg',
        ].map((String url) {
          return GestureDetector(
              onTap: () {
                showInSnackBar("test", context);
              },
              child:GridTile(
              child: new Column(children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(3.0),
              child: Image.network(url, height: 120, fit: BoxFit.cover),
            ),
            new Padding(
                padding: new EdgeInsets.all(0.0),
                child: Container(
                    child:  new Column(children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(2.0),
                            child: Text(
                              'Product Name',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                          Text(
                            'Product Name',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          Text(
                            'Product Name',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10.0),
                          )
                        ]))),
          ])));
        }).toList()),
  );
}
