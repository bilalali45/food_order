import 'package:food_order/screens/home/Account.dart';
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

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey();

  int currentTab = 0;
  final List<Widget> screens = [
        HomeScreen(),
         Order(),
         Histroy(),
         Account()
  ];

  Widget currentScreen = HomeScreen();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,

      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
          _scaffoldState.currentState.openDrawer();
        }),

        title: Text('Page title'),
        actions: [
          Icon(Icons.favorite),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.lightBlue,
      ),


      drawer: Drawer(child: ListView(
        children: <Widget>[
          Container(
            child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"),
              ),
              accountName: Text(
                "John Paul",
                style: Theme.of(context).textTheme.headline6,
              ),
              accountEmail: Text(
                "johnpaul@example.com",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          ListTile(
            title: Text('My Files'),
            leading: Icon(Icons.folder),
            onTap: () {
              print("Clicked");
            },
          ),
          ListTile(
            title: Text('Shared with me'),
            leading: Icon(Icons.people),
            onTap: () {
              print("Clicked");
            },
          ),
          ListTile(
            title: Text('Starred'),
            leading: Icon(Icons.star),
            onTap: () {
              print("Clicked");
            },
          ),
          ListTile(
            title: Text('Recent'),
            leading: Icon(Icons.timer),
            onTap: () {
              print("Clicked");
            },
          ),
          ListTile(
            title: Text('Offline'),
            leading: Icon(Icons.offline_pin),
            onTap: () {
              print("Clicked");
            },
          ),
          ListTile(
            title: Text('Uploads'),
            leading: Icon(Icons.file_upload),
            onTap: () {
              print("Clicked");
            },
          ),
          ListTile(
            title: Text('Backups'),
            leading: Icon(Icons.backup),
            onTap: () {
              print("Clicked");
            },
          ),
        ],
      ),
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



