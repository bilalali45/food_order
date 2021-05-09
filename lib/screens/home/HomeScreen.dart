



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/screens/home/Productdetail.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(

        body: Center(child: Column(children: [data(context)]))

    );

      // child: Container(
      //   color: Colors.blue,
      //   padding: EdgeInsets.all(50.0),
      //
      //   //child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 24.0)),
      // ),

  }
}

data(BuildContext context) {
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
                //builder: (context) => Productdetail();
                _navigateToNextScreen(context);
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

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Productdetail()));
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
