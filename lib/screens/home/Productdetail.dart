import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/constants/assests_image.dart';

class Productdetail extends StatefulWidget {
  Productdetail();

  @override
  ProductdetailState createState() => ProductdetailState();
}

class ProductdetailState extends State<Productdetail>
    with SingleTickerProviderStateMixin {
  CarouselController buttonCarouselController = CarouselController();

  TabController _tabController;

  List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  void initState() {
    super.initState();
    // _tabController = new TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Detail')),
      body: DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 240,
                child: Center(
                  child: CarouselSlider(
                      options: CarouselOptions(
                          autoPlay: true,
                          //aspectRatio: 2.0,
                          viewportFraction: 01,
                          enlargeCenterPage: true),
                           items: imageSliders()),
                ),
              ),
              SizedBox(
                height: 70,
                child: Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    height: 70,
                    child: Container(
                      child: TabBar(
                        //controller: _tabController,
                        isScrollable: false,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.blue,
                        labelColor: Colors.black,



                        // indicator: BubbleTabIndicator(
                        //   indicatorColor: AppColors.BUTTON_COLOR,
                        //   tabBarIndicatorSize: TabBarIndicatorSize.label,
                        //   indicatorRadius: 30.0,
                        //   padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 11.0,bottom: 9.0),
                        // ),
                        tabs: [
                          Tab(

                            child: Padding(
                                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 2.0, right: 2.0),
                                      child: Image(
                                        image: AssetImage(infoicon),
                                        fit: BoxFit.cover,
                                        width: 10,
                                        height: 30,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          "FACILITIES",
                                          style: TextStyle(
                                              color: Colors.black38,
                                              fontSize: 6),
                                          textScaleFactor: 1.1,
                                        )),
                                  ],
                                )),
                          ),
                          Tab(
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 2.0, right: 2.0),
                                      child: Image(
                                          image: AssetImage(facilities),
                                          fit: BoxFit.cover,
                                          width: 40,
                                          height: 30),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 5.0),
                                        child: Text("OUR FACILITIES",
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 6),
                                            textScaleFactor: 1.1)),
                                  ],
                                )),
                          ),
                          Tab(
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 2.0, right: 2.0),
                                      child: Image(
                                        image: AssetImage(gallery_img),
                                        fit: BoxFit.cover,
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 5.0),
                                        child: Text("OUR GALLERY",
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 6),
                                            textScaleFactor: 1.1)),
                                  ],
                                )),
                          ),
                          Tab(
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 2.0, right: 2.0),
                                      child: Image(
                                        image: AssetImage(dateavailable_img),
                                        fit: BoxFit.cover,
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 5.0),
                                        child: Text("AVAILABILITY",
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 6),
                                            textScaleFactor: 1.1)),
                                  ],
                                )),
                          ),
                          Tab(
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 2.0, right: 2.0),
                                      child: Image(
                                        image: AssetImage(location_icon),
                                        fit: BoxFit.cover,
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 5.0),
                                        child: Text("OUR LOCATION",
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 6),
                                            textScaleFactor: 1.1)),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Bike',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Car',
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  imageSliders() {
    return imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(0.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        //Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Image.network(item,
                            fit: BoxFit.cover, width: double.infinity),
                        // Positioned(
                        //   bottom: 0.0,
                        //   left: 0.0,
                        //   right: 0.0,
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       gradient: LinearGradient(
                        //         colors: [
                        //           Color.fromARGB(200, 0, 0, 0),
                        //           Color.fromARGB(0, 0, 0, 0)
                        //         ],
                        //         begin: Alignment.bottomCenter,
                        //         end: Alignment.topCenter,
                        //       ),
                        //     ),
                        //     padding: EdgeInsets.symmetric(
                        //         vertical: 10.0, horizontal: 20.0),
                        //     child: Text(
                        //       'No. ${imgList.indexOf(item)} image',
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 20.0,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    )),
              ),
            ))
        .toList();
  }
}

// Widget image_carousel = new Container(
//     height: 345.0,
//     child: CarouselSlider(
//         options: CarouselOptions(
//           initialPage: 0,
//         ),
//       items: [
//         'https://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
//         'https://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
//         'https://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
//         'https://photo.16pic.com/00/38/88/16pic_3888084_b.jpg'
//       ].map((i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//                 width: MediaQuery.of(context).size.width,
//                 margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 decoration: BoxDecoration(color: Colors.amber),
//                 child: GestureDetector(
//                     child: Image.network(i, fit: BoxFit.fill),
//                     onTap: () {
//                       Navigator.push<Widget>(
//                         context,
//                         MaterialPageRoute(
//                                      // builder: (context) => ImageScreen(i),
//
//                             ),
//                       );
//                     }));
//           },
//         );
//       }).toList(),
//     ));

//   return Scaffold(
//     body: new Column(
//       children: <Widget>[
//         image_carousel,
//       ],
//     ),
//   );
// }
