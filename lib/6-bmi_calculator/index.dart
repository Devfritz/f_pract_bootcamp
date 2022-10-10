import 'package:f_pract_bootcamp/6-bmi_calculator/HomeScreen.dart';
import 'package:f_pract_bootcamp/6-bmi_calculator/resultscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: Color(0xFF0A0E21), centerTitle: true),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
