import 'package:FOOTPRINT_FLUTTER/screens/screens_search.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_feed.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_myrecord.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_name.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_index.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_login.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_splash.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_register.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('oneDayData');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOOTPRINT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Palette.kToGreen,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      routes: {
        '/index': (context) => IndexScreen(),
        //'/home': (context) => NameTab(),
        // '/footprint': (context) => MyrecodeTab(),
        //'/my': (context) => ProfileTab()
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/search': (context) => SearchScreen()
      },
      initialRoute: '/index',
    );
  }
}

class Palette {
  static const MaterialColor kToGreen = const MaterialColor(
    0xFF37EEAB,
    const <int, Color>{
      10: const Color(0xFF80F8CC), //5%
      50: const Color(0xFF61CCA5), //10%
      100: const Color(0xff2cbe89), //20%
      200: const Color(0xff27a778), //30%
      300: const Color(0xff218f67), //40%
      400: const Color(0xff1c7756), //50%
      500: const Color(0xff165f44), //60%
      600: const Color(0xff104733), //70%
      700: const Color(0xff0b3022), //80%
      800: const Color(0xff051811), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
