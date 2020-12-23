import 'file:///C:/Users/Anirudh%20Achal/Desktop/Anirudh/Coding/Dev/Flutter%20Udemy/Projects/bmi-calculator-flutter/lib/components/ReusableBottomCard.dart';
import 'file:///C:/Users/Anirudh%20Achal/Desktop/Anirudh/Coding/Dev/Flutter%20Udemy/Projects/bmi-calculator-flutter/lib/components/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.result, this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result',
            style: kResultTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    this.bmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    this.interpretation,
                    style: kInterpretationTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ReusableBottomCard(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
