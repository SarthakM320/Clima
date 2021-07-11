import 'package:flutter/material.dart';
import 'package:clima_course/screens/loading_screen.dart';
import 'package:clima_course/screens/location_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoadingScreen(),
      //   '/location': (context) => LocationScreen(),
      // },
    );
  }
}
