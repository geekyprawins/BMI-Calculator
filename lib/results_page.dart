import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage(this.bmiResult,this.resultText,this.interpretation);
  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(padding: EdgeInsets.all(15.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Result',

                style: kTitleTextStyle,
              ),
            )),
            Expanded(
                flex: 7,
                child: ReusableCard(
                    kActiveCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: kBMITextStyle,
                        ),
                        Text(
                          interpretation,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    null)),
            BottomButton(
              'RE-CALCULATE',
              () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
