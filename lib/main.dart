import 'package:flutter/material.dart';
import 'package:magdsoft_task/slider_page.dart';
import 'package:magdsoft_task/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'AraHamah'),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(248, 248, 248, 1.0),
        body: SliderPage(),
      ),
    );
  }
}
