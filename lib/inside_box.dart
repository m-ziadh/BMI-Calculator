import 'package:flutter/material.dart';
import 'constrain.dart';

class InsideBox extends StatelessWidget {

  final IconData icon;
  final String lebel;

  InsideBox({required this.icon, required this.lebel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 10.0),
        Text(
          lebel,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}