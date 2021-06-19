import 'dart:math';

class BmiBrain{
  BmiBrain(this.height, this.weight);
  final int height;
  final int weight;
  double _bmi;
  String bmiCalculate(){
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25.0){
      return 'Overweight';
    }else if( _bmi > 18.5){
      return 'Normal';
    }
    else return 'Underweight';
  }
  String getInterpretation(){
    if(_bmi >= 25.0){
      return 'You have higher than normal body weight, try to exercise more!';
    }else if( _bmi > 18.5){
      return 'You have a normal body weight, good job!';
    }
    else return 'You have a lower than normal body weight, you can eat a bit more!';
  }
}