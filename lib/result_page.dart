
import 'package:bmi_calculator_flutter/content_box.dart';
import 'package:flutter/material.dart';

import 'constrain.dart';
import 'image_page.dart';

class ResultPage extends StatelessWidget {

  final String bmi;
  final String bmiRes;
  final String bmiNote;

  ResultPage({required this.bmi, required this.bmiRes, required this.bmiNote});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI Result',
            style: kAppBarStyle,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: kResultDisTestStyle,
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Box_Content(
              boxC: Colors.black26,
              boxChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      bmiRes,
                      style: kResultMesTestStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kResultTestStyle,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bmiNote,
                        style: kResultMesTestStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              child: const Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              margin: EdgeInsets.all(10.0),
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
