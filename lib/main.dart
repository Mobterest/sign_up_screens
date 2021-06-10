import 'package:flutter/material.dart';
import './pages/screen_01.dart';
import './global/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen',
      theme: ThemeData(fontFamily: FONT_FAMILY),
      home: ScreenA(),
      debugShowCheckedModeBanner: false,
    );
  }
}
