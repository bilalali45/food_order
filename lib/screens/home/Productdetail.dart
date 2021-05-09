import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productdetail extends StatefulWidget {
  Productdetail();

  @override
  ProductdetailState createState() => ProductdetailState();
}

class ProductdetailState extends State<Productdetail> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        height: 345.0,
        child: CarouselSlider(
          items: [
            'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
            'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
            'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
            'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg'
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fill),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                                // builder: (context) => ImageScreen(i),
                                ),
                          );
                        }));
              },
            );
          }).toList(),
        ));

    return Scaffold(
      body: new Column(
        children: <Widget>[
          image_carousel,
        ],
      ),
    );
  }
}
