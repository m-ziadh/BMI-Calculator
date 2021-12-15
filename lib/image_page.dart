import 'package:bmi_calculator_flutter/bmi_brain.dart';
import 'package:flutter/material.dart';
import 'content_box.dart';
import 'inside_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constrain.dart';
import 'round_icon_button.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender? isSelected;
  int height = 150;
  int age = 20;
  int weight = 50;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Calculate BMI',
              style: kAppBarStyle,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = Gender.male;
                        });
                      },
                      child: Box_Content(
                        boxC: isSelected == Gender.male
                            ? kActiveColor
                            : kInactiveColor,
                        boxChild: InsideBox(
                            icon: FontAwesomeIcons.mars, lebel: 'MALE'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = Gender.female;
                        });
                      },
                      child: Box_Content(
                        boxC: isSelected == Gender.female
                            ? kActiveColor
                            : kInactiveColor,
                        boxChild: InsideBox(
                            icon: FontAwesomeIcons.venus, lebel: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Box_Content(
                boxC: Colors.black26,
                boxChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Height',
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kDisplayTestStyle,
                        ),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.green,
                        overlayColor: Color(0x2068EF6A),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.5),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.blueGrey,
                      ),
                      child: Slider(
                          max: 250,
                          min: 100,
                          value: height.toDouble(),
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight.toInt();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Box_Content(
                      boxC: Colors.black26,
                      boxChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kDisplayTestStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                doWork: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                doWork: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Box_Content(
                      boxC: Colors.black26,
                      boxChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kDisplayTestStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                doWork: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                              SizedBox(width: 10.0),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                doWork: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                BMIBrain bb = BMIBrain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmi: bb.getBMI(),
                              bmiRes: bb.getStatus(),
                              bmiNote: bb.getNote(),
                            )));
              },
              child: Container(
                child: const Center(
                  child: Text(
                    'Calculate',
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

