import 'package:flutter/material.dart';
import 'image_page.dart';

void main() => runApp(const BMICalculator());


class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Colors.black),
      ),
      home: InputPage(),
    );
  }
}


