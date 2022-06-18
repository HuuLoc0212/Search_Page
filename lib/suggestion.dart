import 'dart:io';

import 'package:flutter/material.dart';
import 'package:search_page/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          color: Colors.red,
          child: Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
              ),
              FlatButton(
                onPressed: () {},
                child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
              ),
              FlatButton(
                onPressed: () {},
                child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
              ),
              FlatButton(
                onPressed: () {},
                child: Image.network(
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
