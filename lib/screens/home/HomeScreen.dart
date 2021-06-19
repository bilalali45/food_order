import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/screens/home/Productdetail.dart';
import 'package:food_order/screens/home/googlemap.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }



  @override
  Widget build(BuildContext ctx) {
    return Scaffold(




      // body: GoogleMap(
      //     onMapCreated: _onMapCreated,
      //     initialCameraPosition: CameraPosition(
      //       target: _center,
      //       zoom: 11.0,
      //     ),
       body: Center(child: Column(children: [data(context)]))





      // )
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
          'https://media.istockphoto.com/photos/large-room-set-up-for-a-banquet-round-tables-picture-id178992732',
          'https://media.istockphoto.com/photos/wedding-reception-picture-id522240329?s=612x612',
          'https://media.istockphoto.com/photos/photo-of-served-festive-table-with-dishes-picture-id803717652?s=612x612',
          'https://media.istockphoto.com/photos/banquet-hall-picture-id1060895354?k=6&m=1060895354&s=612x612&w=0&h=nRWFv7XFQ3BNIrVKRRkq5RUCpHmqlKdtpH3clmQcM9E=',
          'https://media.istockphoto.com/photos/buffet-and-catering-table-picture-id493760052?k=6&m=493760052&s=612x612&w=0&h=YuJIsfe9uq3U1iQ7LmueUA_g-9lOQMe1Wt4pI7aTs2Q=',
          'https://media.istockphoto.com/photos/everything-is-almost-finished-for-wedding-ceremony-picture-id1161558644?k=6&m=1161558644&s=612x612&w=0&h=D0WrdOslIzMReNL-LdirXwN65g02JTsYk2uIjr-EkhU=',
          'https://media.istockphoto.com/photos/banquet-hall-decorated-for-special-occasion-picture-id498080343?k=6&m=498080343&s=612x612&w=0&h=ROMutRletcc5rChGhwvqKEi6UeJuLkF5jh3PCS7ldBo=',
          'https://media.istockphoto.com/photos/banquet-hall-decorated-for-special-occasion-picture-id498080343?k=6&m=498080343&s=612x612&w=0&h=ROMutRletcc5rChGhwvqKEi6UeJuLkF5jh3PCS7ldBo=',
          'https://media.istockphoto.com/photos/wedding-reception-chairs-for-wedding-couple-with-bride-and-groom-picture-id1144984626?k=6&m=1144984626&s=612x612&w=0&h=CkGpmU6m1rOELXMjFdKrI8QmwPQF5mxOd_lB1g_QbrE=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
          'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc=',
           ].map((String url) {
          return GestureDetector(
              onTap: () {
                showInSnackBar("test", context);
                //builder: (context) => Productdetail();
                _navigateToNextScreen(context);
              },
              child:GridTile(
              child : Card(
              shape: RoundedRectangleBorder(
                  borderRadius:
              BorderRadius.all(Radius.circular(8.0))),
                  child: new Column(children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(3.0),
                      child: Image.network(url, height: 120,width: MediaQuery.of(context).size.width, fit: BoxFit.cover),
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
                                      fontWeight: FontWeight.bold, fontSize: 16.0),
                                ),
                              ),

                          new Padding(
                            padding: new EdgeInsets.all(2.0),

                          child: Text(
                                'Product Name',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12.0),
                              ),
                        ),
                         new Padding(
                             padding: new EdgeInsets.all(2.0),

                             child: Text(
                                'Product Name',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 8.0),
                              )
                          )
                            ]))),
                  ]))));
        }).toList()),
  );
}

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Productdetail()));

   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => googlemap()));
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
