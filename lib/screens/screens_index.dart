import 'package:FOOTPRINT_FLUTTER/main.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_feed.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_myrecord.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_name.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 1;
  final List<Widget> _tabs = [
    MyrecodeTab(),
    NameTab(),
    FeedTab(),
    //ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FOOTPRINT',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('basic_profile.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('Name Example'),
              accountEmail: Text('example@naver.com'),
              onDetailsPressed: () {
                print('arrow click');
              },
              decoration: BoxDecoration(
                  color: Palette.kToGreen[10],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Palette.kToGreen[500],
              ),
              title: Text('Setting'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_objects,
                color: Palette.kToGreen[500],
              ),
              title: Text('About FootPrint'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: Color.fromARGB(255, 40, 40, 40),
        unselectedItemColor: Color.fromARGB(255, 194, 193, 193),
        selectedLabelStyle: TextStyle(fontSize: 12),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.route), label: 'FootPrint'),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.subtitles), label: 'Feed'),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My')
        ],
      ),
      body: _tabs[_currentIndex],
    );
  }
}
