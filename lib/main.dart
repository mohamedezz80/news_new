import 'package:flutter/material.dart';
import 'package:news_app/homepage.dart';

void main() => runApp(new MaterialApp(
  title: "News App",
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    primaryColor: Colors.blueGrey[900],
  ),
  home: MyPage(),
));