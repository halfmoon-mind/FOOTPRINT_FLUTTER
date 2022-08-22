import 'package:FOOTPRINT_FLUTTER/screens/screens_search.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_feed.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_myrecord.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_home.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_index.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_login.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_splash.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_register.dart';
import 'package:FOOTPRINT_FLUTTER/component/map_component.dart';
import 'package:FOOTPRINT_FLUTTER/component/map_startend.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:FOOTPRINT_FLUTTER/firebase_options.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/oneDay_model.dart';
import 'package:FOOTPRINT_FLUTTER/models/inDB/location_model.dart';

//import 'firebase_option.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(oneDayModelAdapter());
  Hive.registerAdapter(LocationModelAdapter());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await localhostServer.start();
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
      initialRoute: '/',
    );
  }
}

class Palette {
  static const MaterialColor kToGreen = MaterialColor(
    0xFF37EEAB,
    <int, Color>{
      10: Color(0xFF80F8CC), //5%
      50: Color(0xFF61CCA5), //10%
      100: Color(0xff2cbe89), //20%
      200: Color(0xff27a778), //30%
      300: Color(0xff218f67), //40%
      400: Color(0xff1c7756), //50%
      500: Color(0xff165f44), //60%
      600: Color(0xff104733), //70%
      700: Color(0xff0b3022), //80%
      800: Color(0xff051811), //90%
      900: Color(0xff000000), //100%
    },
  );
}
