import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({int height, int weight}) {
    this._height = height;
    this._weight = weight;
    this._bmi = _calculateBMI(this._height, this._weight);
  }
  int _height;
  int _weight;
  double _bmi;

  double _calculateBMI(int height, int weight) {
    return weight / pow(height / 100, 2);
  }

  String getBMI() {
    return this._bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (this._bmi >= 25) {
      return 'OverWeight';
    } else if (this._bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (this._bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (this._bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}
