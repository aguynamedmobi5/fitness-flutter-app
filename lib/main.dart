import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/workout_page.dart';
import 'constants.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body:WorkOutPage(),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.add),
          //   backgroundColor: kColorOrange,
          // ),
        ),
      ),
    ),
  );
}
