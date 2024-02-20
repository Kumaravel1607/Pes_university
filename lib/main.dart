import 'package:flutter/material.dart';
import 'package:pesu/Navigation.dart';
import 'package:pesu/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      // home: Dash_staff(),
      //home: NewRequest());
    );
  }
}
