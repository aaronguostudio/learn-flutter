import 'package:flutter/material.dart';
import 'constants.dart';
import 'components/reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation
  });

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: Center(
              child: Text(
                bmiResult,
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            height: 40.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: ReusableCard(
                handleTap: () {
                  //
                },
                color: kInactiveCardColor,
                cardChild: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            resultText.toUpperCase(),
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        )
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          bmiResult,
                          style: TextStyle(
                            fontSize: 100.0,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50.0, left: 20.0, right: 20.0),
                      child: Container(
                        child: Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          )
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomBarColor,
              margin: EdgeInsets.only(top: 8.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              padding: EdgeInsets.only(bottom: 14.0),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle,
                )
              ),
            ),
          ),
        ],
      )
    );
  }
}
