import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/main.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomeTab extends StatelessWidget {
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
    );
  }
}
