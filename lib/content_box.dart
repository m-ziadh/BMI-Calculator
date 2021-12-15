import 'package:flutter/material.dart';

class Box_Content extends StatelessWidget {

  final Color boxC;
  Widget boxChild;

  Box_Content({required this.boxC, required this.boxChild});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: boxChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: boxC,
          borderRadius: BorderRadius.circular(20),
        ),
    );
  }
}
