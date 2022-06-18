import 'package:flutter/material.dart';
import 'package:search_page/slider.dart';
import 'package:search_page/search_page.dart';
import 'package:search_page/suggestion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //white status bar

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
      ),
      home: SearchScreen(),
    );
  }
}
