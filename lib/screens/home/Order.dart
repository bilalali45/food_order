import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/constants/assests_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Order extends StatefulWidget {
  Order();
  @override
  OrderState createState() => OrderState();
}

class OrderState extends State<Order> {
  //final List<String> entries = <String>['A', 'B', 'C'];

  List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext ctx) {
    // body: Center(child: Column(children: [data(context)]))
    return MaterialApp(
        title: "title",
        home: Scaffold(
          // appBar: AppBar(
          //   title: Text("title"),
          // ),
          body: Container(

           child:Column(
               children: <Widget>[
                 Container(
                   width: MediaQuery.of(context).size.width / 1.1,
                   margin: EdgeInsets.only(top: 30),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Colors.grey.withOpacity(.3),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                     child: TextField(
                       decoration: InputDecoration(
                           fillColor: Colors.white,
                           border: InputBorder.none,

                           suffixIcon:Container(
                               alignment: Alignment.centerRight,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.end,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                   child:Icon(Icons.search),
                                 ),Padding(
                                   padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                   child: Icon(Icons.filter_9_plus_rounded),
                                 )



                               ],
                             ),


                           ), hintText: "Search",

                       )




                     ),
                   ),
                 ),
              Expanded(


            child:ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Container(

                  margin: EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(8.0))),
                    child: InkWell(
                      onTap: () => print("ciao"),
                      child: Column(


                        children: <Widget>[

                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),

                             child: Stack(
                               children: [
                                 Container(
                                   child:
                                   Image.network(imgList[index],
                                       height: 150,
                                       fit: BoxFit.cover, width: double.infinity),
                                 ),

                                   new Positioned.fill(
                                     right: 0.0,
                                     bottom: 0.0,
                                       child: Align(
                                         alignment: Alignment.topRight,
                                         child: new Icon(Icons.star),
                                       )
                                   ),


                                ]
                             ),




                            // child: Image.asset('img/britannia.jpg',
                            //     width: 300,
                            //     height: 150,
                            //     fit: BoxFit.fill),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Align(
                                alignment: Alignment.centerLeft,

                                child:Text('The Rizte LOC',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                )

                                )
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                         child:Text('not the loc',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0,
                                          ),
                                        )

                                    )
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                                    child: Align(
                                       alignment: Alignment.centerLeft,
                                        child:RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15.0,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        )

                                )

                                ),

                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:Divider(
                                            color: Colors.black
                                        )

                                    )

                                ),


                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child:Row(
                                          children: [


                                        Padding(
                                        padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                         child: Align(
                                        alignment: Alignment.centerLeft,
                                              child:Text('abcdbe',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            )
                                           ),
                                            Padding(
                                                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                                child: Align(

                                                  alignment: Alignment.centerRight,
                                                  child:Text('abcdbe',
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 12.0,
                                                    ),
                                                  ),
                                                )
                                            ),    Padding(
                                                padding: EdgeInsets.fromLTRB(50, 0, 10, 5),
                                                child: Align(
                                                  alignment: Alignment.centerRight,
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        children: [
                                                        Container(

                                                        alignment: Alignment.centerRight,
                                                        child:Text('abcdbe',
                                                         textAlign: TextAlign.end,

                                                         style: TextStyle(
                                                           color: Colors.black87,
                                                         fontStyle: FontStyle.normal,
                                                         fontWeight: FontWeight.bold,
                                                          fontSize: 12.0,
                                                     ),
                                                     ),
                                                   )
                                                    ]
                                                    )

                                                )
                                            )
                                          ],
                                        )

                                    )

                                )



                              ],
                            ),
                           // title: Text('Pub 1'),
                           // subtitle: Text('Location 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );

              }
             ),
          ),
          ]
          )
          )

        ));
  }
}

// data(BuildContext context) {
  //   return Expanded(
  //     child: Center(
  //         child: ListView.builder(
  //             padding: const EdgeInsets.all(8),
  //             itemCount: entries.length,
  //             itemBuilder: (BuildContext context, int index) {
  //               return Container(
  //
  //                 height: 260,
  //                 //color: Colors.amber[colorCodes[index]],
  //                 child: Center(
  //
  //                   /// child: Text('Entry ${entries[index]}')
  //
  //                     child: Container(
  //
  //
  //
  //                        margin: EdgeInsets.all(10),
  //                       // padding: EdgeInsets.all(10),
  //                       alignment: Alignment.center,
  //                       constraints: new BoxConstraints.expand(
  //                       ),
  //                       padding: new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
  //
  //                       decoration: BoxDecoration(
  //                           color: Colors.white,
  //                           border: Border.all(
  //                               color: Colors.white, // Set border color
  //                               width: 3.0),
  //                           // Set border width
  //                           borderRadius: BorderRadius.all(
  //                               Radius.circular(10.0)),
  //
  //                           image: new DecorationImage(
  //                             image: new AssetImage(background),
  //                             fit: BoxFit.cover,
  //                           ),
  //
  //                           // Set rounded corner radius
  //                           boxShadow: [
  //                             BoxShadow(blurRadius: 10,
  //                                 color: Colors.black,
  //                                 offset: Offset(1, 3))
  //                           ] // Make rounded corner of border
  //                       ),
  //                     //  child: Text('Entry ${entries[index]}'),
  //                       child: Container(
  //                           child: new Stack(
  //                             children: <Widget>[
  //                               new Positioned(
  //                                 left: 0.0,
  //                                 bottom: 0.0,
  //                                 child: new Text('Title',
  //                                     style: new TextStyle(
  //                                       fontWeight: FontWeight.bold,
  //                                       fontSize: 20.0,
  //                                     )
  //                                 ),
  //                               ),
  //                               new Positioned(
  //                                 right: 0.0,
  //                                 bottom: 0.0,
  //                                 child: new Icon(Icons.star),
  //                               ),
  //                             ],
  //                           )
  //                       ),
  //
  //                     )
  //
  //                 ),
  //               );
  //             }
  //
  //         )
  //
  //     ),
  //
  //   );
  //   }


