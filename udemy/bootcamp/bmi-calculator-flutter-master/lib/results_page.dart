import 'package:flutter/material.dart';
import 'constants.dart';
import 'components/reusable_card.dart';
import 'package:bmi_calculator/results_page.dart';

class ResultsPage extends StatelessWidget {
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
                'Your Result',
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
                            'RESULT',
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
                          '24',
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
                          'Your BMI result is quit low, you shoud eat more!',
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
