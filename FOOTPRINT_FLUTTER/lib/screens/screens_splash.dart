import 'dart:async';

import 'package:FOOTPRINT_FLUTTER/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;

    print('[*] 로그인 상태: ${isLogin.toString()}');
    return isLogin;
  }

  void moveScreen() async {
    await Hive.openBox('oneDay');
    await checkLogin().then((isLogin) {
      if (isLogin) {
        Navigator.of(context).pushReplacementNamed('/index');
      } else {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 3000), () {
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: null,
      backgroundColor: Palette.kToGreen,
      body: Container(
        padding: EdgeInsets.only(top: statusBarHeight),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 320.0,
            // ),
            Center(
              child: Image.asset(
                'splashscreen_icon.png',
                width: 160.0,
                height: 160.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child:
                  Image.asset('splashscreen_text.png', width: 120, height: 120),
            )
          ],
        ),
      ),
    );
  }
}
