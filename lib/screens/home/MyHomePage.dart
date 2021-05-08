import 'package:food_order/screens/home/Histroy.dart';
import 'package:food_order/screens/home/HomeScreen.dart';
import 'package:food_order/screens/home/Order.dart';
import 'package:food_order/screens/home/Setting.dart';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import '../../CustomText.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int currentTab = 0;
  final List<Widget> screens = [
        HomeScreen(),
         Order(),
         Histroy(),
         Setting()
  ];
  Widget currentScreen = HomeScreen();

  final PageStorageBucket bucket = PageStorageBucket();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Food order'),
        ),

      //  body: Center(child: Column(children: [data(context)])));



      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: bmnav.LabelStyle(visible: true),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.fitness_center, label: 'Order'),
          bmnav.BottomNavItem(Icons.person, label: 'Histroy'),
          bmnav.BottomNavItem(Icons.view_headline, label: 'Settings')
        ],
      ),
    );


  }
}



