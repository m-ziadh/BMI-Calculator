import 'dart:math';

class BMIBrain{

  final height;
  final weight;

  double _bmi = 0.0;

  BMIBrain({required this.height, required this.weight});

  String getBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus(){
    if(_bmi < 18.5){
      return 'UNDERWEIGHT';
    }
    else if(_bmi >18.5 && _bmi < 24.9){
      return 'HEALTHY';
    }
    else if(_bmi >24.9 && _bmi < 29.9){
      return 'OVERWEIGHT';
    }
    return 'OBESE';
  }

  String getNote(){
    double t_weight = pow(height / 100, 2) * 20.0;
    if(_bmi < 18.5) {
      return 'Your Weight Should be '+t_weight.toStringAsFixed(0)+'kg. Need to Gain Some Weight.';
    }
    else if(_bmi >18.5 && _bmi < 24.9){
      return 'Your Weight is Perfect. Stay Fit.';
    }
    else if(_bmi >24.9 && _bmi < 29.9){
      return 'Your Weight Should be '+t_weight.toStringAsFixed(0)+'kg. Need to lose Some Weight.';
    }
    return 'Your Weight Should be '+t_weight.toStringAsFixed(0)+'kg. You Should See a Doctor.';
  }
}