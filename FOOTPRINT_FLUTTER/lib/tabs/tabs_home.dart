import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:FOOTPRINT_FLUTTER/component/home_body.dart';
import 'package:hive_flutter/hive_flutter.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
final UserDataBox = Hive.box('UserData');

class HomeTab extends StatelessWidget {
  final HomeTabPage homeTabPage;
  HomeTab({Key? key, required this.homeTabPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('basic_profile.png'),
                backgroundColor: Colors.white,
              ),
              // accountName: Text("HELLO"),
              // accountEmail: Text("USER"),
              accountName: Text(UserDataBox.get(0).nickname),
              accountEmail: Text(UserDataBox.get(0).email),
              onDetailsPressed: () {
                print('arrow click');
              },
              decoration: BoxDecoration(
                  color: Palette.kToGreen[10],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Palette.kToGreen[500],
              ),
              title: const Text('LogOut'),
              onTap: () async {
                // Navigator.of(context).pop();
                await FirebaseAuth.instance.signOut();
                Hive.box('UserData').clear();
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_objects,
                color: Palette.kToGreen[500],
              ),
              title: const Text('About FootPrint'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TODAY\'S FOOTPRINT',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                // const SizedBox(
                //   width: 145,
                // ),
                IconButton(
                  icon: const Icon(CupertinoIcons.share),
                  onPressed: () {},
                )
              ],
            ),
          ),
          homeTabPage.FootprintMap,
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 305, top: 16),
            child: Text(
              'TIMELINE',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Homebody(
              homeTabPage: HometabPage,
            ),
          ),
        ],
      ),
    );
  }
}
