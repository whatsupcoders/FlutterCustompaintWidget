import 'package:flutter/material.dart';
import 'homepage.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter CustomPaint Widget',
      theme: ThemeData(
        primaryColor: Color(0xff586fec),
      ),
      home: HomePage(),
    );
  }
}