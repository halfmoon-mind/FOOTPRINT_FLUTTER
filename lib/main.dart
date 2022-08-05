import 'package:FOOTPRINT_FLUTTER/tabs/tabs_feed.dart';
import 'package:FOOTPRINT_FLUTTER/tabs/tabs_myrecord.dart';
import 'package:flutter/material.dart';
import 'package:FOOTPRINT_FLUTTER/screens/screens_index.dart';

void main() {
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
        // '/feed': (context) => FeedTab(),
        // '/footprint': (context) => MyrecodeTab(),
        //'/my': (context) => ProfileTab()
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
