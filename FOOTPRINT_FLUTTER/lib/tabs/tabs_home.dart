import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:FOOTPRINT_FLUTTER/models/user.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
String? UID;

class HomeTab extends StatelessWidget {
  Future setLogout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', false);
    prefs.setString('UID', '');
    print('[*] 로그인 상태 : ' + prefs.getBool('isLogin').toString());
  }

  Future getUID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    UID = prefs.getString('UID');
  }

  Future<List<USER>> getUserData(UID) => FirebaseFirestore.instance
      .collection('user')
      .where('uid', isEqualTo: UID)
      .get()
      .then((snapshot) =>
          snapshot.docs.map((doc) => USER.fromJson(doc.data())).toList());

  @override
  Widget build(BuildContext context) {
    getUID();

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
              title: Text('LogOut'),
              onTap: () async {
                // Navigator.of(context).pop();
                await FirebaseAuth.instance.signOut();
                await setLogout();
                Navigator.of(context).pushReplacementNamed('/login');
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
