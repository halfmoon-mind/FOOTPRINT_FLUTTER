import 'package:FOOTPRINT_FLUTTER/component/home_body.dart';
import 'package:FOOTPRINT_FLUTTER/main.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_feed.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_myrecord.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_home.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [
            FeedTab(),
            HomeTab(homeTabPage: HometabPage),
            MyrecodeTab(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.subtitles), label: 'Feed'),
            BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.route), label: 'FootPrint'),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My')
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
        ));
  }
}
