import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/button.dart';

class ReasultPage extends StatelessWidget {
  ReasultPage(
      {@required this.bmiReasult,
      @required this.reasultText,
      @required this.interpretation});

  final String? bmiReasult;
  final String? reasultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090C22),
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      reasultText.toString().toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiReasult.toString(),
                      style: kBMITextStyle,
                    ),
                    Column(
                      children: [
                        Text(
                          "Normal BMI Range:",
                          style: kNormalTextStyle,
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          "18.5 - 25",
                          style: kNormalRangeStyle,
                        ),
                      ],
                    ),
                    Text(
                      interpretation.toString(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                    TextButton(
                      child: Text(
                        'SAVE RESULT',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10.0),
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF1D1F33),
                        disabledBackgroundColor: Colors.grey,
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                    )
                  ],
                )),
          ),
          BottomButton(
              buttonTitle: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
