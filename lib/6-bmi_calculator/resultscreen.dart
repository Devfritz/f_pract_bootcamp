import 'package:f_pract_bootcamp/6-bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultBmi extends StatelessWidget {
  const ResultBmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kActiveColor,
      appBar: AppBar(
        backgroundColor: kActiveColor,
        title: Text('Result BMI'),
      ),
      body: Center(
        child: Text('Result BMI'),
      ),
    );
  }
}
