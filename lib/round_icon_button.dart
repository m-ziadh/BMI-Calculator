import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final Function doWork;

  RoundIconButton({required this.icon, required this.doWork});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        doWork();
      },
      elevation: 2.0,
      child: Icon(icon),
      fillColor: Colors.green,
      constraints: BoxConstraints.tightFor(
        height: 45,
        width: 45,
      ),
      shape: CircleBorder(),
    );
  }
}
