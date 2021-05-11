import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatefulWidget {
  ProductDetailView();
  @override
  ProductDetailViewState createState() => ProductDetailViewState();
}

class ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext ctx) {
    var title = "Image Slider Widget";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          // child: ImageSliderWidget(
          //   imageUrls: _imageUrls,
          //   imageBorderRadius: BorderRadius.circular(8.0),
          // ),
        ),
      ),
    );
  }
}
