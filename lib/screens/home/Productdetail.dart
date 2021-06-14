import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/constants/assests_image.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel, EventList;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';


class Productdetail extends StatefulWidget {
  Productdetail();
   CalendarCarousel _calendarCarousel;
  @override
  ProductdetailState createState() => ProductdetailState();
}




class ProductdetailState extends State<Productdetail>

    with SingleTickerProviderStateMixin {
     CarouselController buttonCarouselController = CarouselController();

    int cur_index = 0;
     double _currentpage = 0;

     TabController _tabController;
      CarouselController _controllerpager;
        List<String> imgList = [
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
          'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
          'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
          'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
          'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
           ];

     Completer<GoogleMapController> _controller = Completer();

     static const LatLng _center = const LatLng(45.521563, -122.677433);

     void _onMapCreated(GoogleMapController controller) {
       _controller.complete(controller);
     }


     @override
  void initState() {




    super.initState();

    _controllerpager = CarouselController();

    _tabController = new TabController(vsync: this, length: 5);



     _tabController.addListener(() {
      setState(() {
        cur_index = _tabController.index;
      });


       });





  }

  @override
  Widget build(BuildContext context) {

    final List<String> entries = <String>['A', 'B', 'C'];


    DateTime _currentDate = DateTime(2019, 2, 3);
    DateTime _currentDate2 = DateTime(2019, 2, 3);
    String _currentMonth = DateFormat.yMMM().format(DateTime(2019, 2, 3));
    DateTime _targetDateTime = DateTime(2019, 2, 3);

    return Scaffold(
      appBar: AppBar(title: Text('Product Detail')),
      body: Container(



          //length: 5,
          child: Column(

            children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,

                  child: Stack(
                    children: [
                      SizedBox(
                        height: 250,
                        child: Center(
                          child: CarouselSlider(
                              options: CarouselOptions(
                                  autoPlay: true,
                                  //aspectRatio: 2.0,
                                  viewportFraction: 01,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentpage = index.toDouble();
                                    });
                                  },
                                  enlargeCenterPage: true),
                              carouselController: _controllerpager,
                              items: imageSliders()
                          ),




                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:8.0),
                          child: DotsIndicator(
                            dotsCount: 6,
                            position: _currentpage,
                            decorator: DotsDecorator(
                              color: Colors.white, // Inactive color
                              activeColor: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                )  ,

              // SizedBox(
              //   height: 240,
              //   child: Center(
              //     child: CarouselSlider(
              //         options: CarouselOptions(
              //             autoPlay: true,
              //             //aspectRatio: 2.0,
              //             viewportFraction: 01,
              //             onPageChanged: (index, reason) {
              //               setState(() {
              //                 _currentpage = index.toDouble();
              //               });
              //             },
              //               enlargeCenterPage: true),
              //               carouselController: _controllerpager,
              //               items: imageSliders()
              //           ),
              //
              //
              //
              //
              //   ),
              // ),
              //
              // DotsIndicator(
              //   dotsCount: 6,
              //   position: _currentpage,
              //   decorator: DotsDecorator(
              //     color: Colors.black87, // Inactive color
              //     activeColor: Colors.redAccent,
              //   ),
              // ),

              SizedBox(
                height: 70,

                child: Container(

                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),

                     // margin: const EdgeInsets.only(top: 15.0),
                      height: 70,
                      // margin: EdgeInsets.all(8),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(8.0),
                      //   color: Colors.white,
                      //   boxShadow: [
                      //     BoxShadow(
                      //       color: Colors.black,
                      //       blurRadius: 2.0,
                      //       spreadRadius: 0.0,
                      //       offset: Offset(2.0, 2.0), // shadow direction: bottom right
                      //     )
                      //   ],
                      // ),



                      child: TabBar(

                        controller: _tabController,
                        isScrollable: false,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.blue,
                        labelColor: Colors.black,
                        onTap: (index){
                         setState(() {
                           cur_index = index;
                         });
                        },



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
                                        image: cur_index == 0 ? AssetImage(infoicon) :  AssetImage(gallery_img)  ,
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
                                          width: 30,
                                          height: 25),
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
                                        height: 25,
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
                                        width: 35,
                                        height: 20,
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
                                        height: 25,
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
             SizedBox(
               height: 3,
                 child: Container(
                   height: 3,
                   margin: const EdgeInsets.all(10.0),
                  color: Colors.grey,
               )
             ),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 20),
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),



                        ],


                      ),




                      child:Container(

                        //length: 5,
                        child: Column(
                        children: <Widget>[

                        Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 20, 5),

                         child:Text('About',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),

                          ),
                        ),

                              Padding(
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child:Text('We welcome all kind of booking for picnic, meeting etc Also this that the facilities  will be provided to their full potential..',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),

                                ),
                              ),


                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                   child: Align(
                                    alignment: Alignment.centerLeft,
                                       child: Row(
                                        children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child:Icon(
                                            Icons.phone,
                                            size: 20.0,
                                            ),

                                          ),
                                         Text('+92 3452564180',
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0,
                                            ),
                                        )


                                      ]
                                  )


                                   )
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              child:Icon(
                                                Icons.phone,
                                                size: 20.0,
                                              ),

                                            ),
                                            Text('booking@gmail.com',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                              ),
                                            )


                                          ]
                                      )


                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              child:Icon(
                                                Icons.phone,
                                                size: 20.0,
                                              ),

                                            ),
                                       Container(
                                           margin: EdgeInsets.only(left:10.0),
                                           child: Text('AlHada Area Mekkah Road,1143',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                              ),
                                            )
                                       )

                                          ]
                                      )


                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              child:Icon(
                                                Icons.phone,
                                                size: 20.0,
                                              ),

                                            ),
                                            Text('1400 Person Capacity',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                              ),
                                            )


                                          ]
                                      )


                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                              child:Icon(
                                                Icons.phone,
                                                size: 20.0,
                                              ),

                                            ),
                                            Text('19900 SQ FT|1849 SQ M',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                              ),
                                            )


                                          ]
                                      )


                                  )
                              )


                         ],

                        )


                      )
                    ),


                    Container(
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
                    Container(
                      margin: new EdgeInsets.all(20.0),
                      child: Center(
                        child: GridView.count(
                            crossAxisCount: 4,
                            childAspectRatio: 1.0,
                            padding: const EdgeInsets.all(10.0),
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10.0,
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
                              'https://media.istockphoto.com/photos/elegant-banquet-hall-with-pink-lights-picture-id486063276?k=6&m=486063276&s=612x612&w=0&h=zoYX4u0r6s7VbEYOsVUGU0bNniIWpMmLRet5F5wr8Xc='
                            ].map((String url) {
                              return GestureDetector(
                                  child:GridTile(
                                      child: new Column(children: <Widget>[
                                        new Padding(
                                          padding: new EdgeInsets.all(3.0),
                                          child: Image.network(url, height: 50, fit: BoxFit.cover),
                                        ),
                                        new Padding(
                                            padding: new EdgeInsets.all(0.0),
                                            child: Container(
                                                child:  new Column(children: <Widget>[
                                                  new Padding(
                                                    padding: new EdgeInsets.all(2.0),
                                                  ),
                                          ]))),
                                      ])));
                            }).toList()),

                      ),
                    ),


                    Container(
                      margin: new EdgeInsets.all(30.0),
                      child: Center(
                        child:CalendarCarousel<Event>(
                      onDayPressed: (date, events) {
                    this.setState(() => _currentDate = date);
                    events.forEach((event) => print(event.title));
                    },
                      weekendTextStyle: TextStyle(
                        color: Colors.red,

                      ),
                      thisMonthDayBorderColor: Colors.grey,
                          dayPadding: 1.0,
    //          weekDays: null, /// for pass null when you do not want to render weekDays
                      headerText: 'Custom Header',
                      weekFormat: false,
                     // markedDatesMap: _markedDateMap,

                      selectedDateTime: _currentDate2,
                      showIconBehindDayText: true,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
                      customGridViewPhysics: BouncingScrollPhysics(),

                      markedDateShowIcon: true,
                      markedDateIconMaxShown: 2,
                          selectedDayTextStyle: TextStyle(
                        color: Colors.yellow,
                      ),
                      todayTextStyle: TextStyle(
                        color: Colors.blue,
                      ),
                      markedDateIconBuilder: (event) {
                        return event.icon ?? Icon(Icons.help_outline);
                      },
                      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
                      maxSelectedDate: _currentDate.add(Duration(days: 360)),
                      todayButtonColor: Colors.transparent,
                      todayBorderColor: Colors.green,
                      markedDateMoreShowTotal:
                      true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
                    )


                /// Example Calendar Carousel without header and custom prev & next button



                      ),
                    ),
                    Container(
                      child: Center(
                        child: GoogleMap(
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 11.0,
                          ),
                      ),
                    ),
                    )
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

                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        //Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Image.network(item,
                            fit: BoxFit.fill, width: double.infinity),
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
