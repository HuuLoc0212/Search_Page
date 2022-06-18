import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:search_page/slider.dart';
import 'package:search_page/suggestion.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[20],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              top: 24.0,
            ),
            child: Text(
              'Search',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          // SizedBox(
          //   height: 5.0,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 24.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(23)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    height: 30,
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'I`m listening to what you need'),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 16,
          ),
          CarouselWithDotsPage(imgList: imgList),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35.0,
            ),
            child: Text(
              'Suggestions for you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          
        ],
      ),
    );
  }
}
