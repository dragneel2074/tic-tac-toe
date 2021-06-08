import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tictactoe/Ads/Admob.dart';
import 'package:tictactoe/screens/Welcome_Screen.dart';

void main() {
 // SystemChrome.setEnabledSystemUIOverlays([]);
  WidgetsFlutterBinding.ensureInitialized();
  AdMobService.initializeAd();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
