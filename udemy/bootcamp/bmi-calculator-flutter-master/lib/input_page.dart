import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/card_icon.dart';
import 'components/reusable_card.dart';
import 'constants.dart';


enum GenderOptions {
  MALE,
  FEMALE
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderOptions selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      handleTap: () {
                        setState(() {
                          selectedGender = GenderOptions.MALE;
                        });
                      },
                      color: selectedGender == GenderOptions.MALE ? kActiveCardColor : kInactiveCardColor,
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                        titleStyle: kLabelTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      handleTap: () {
                        setState(() {
                          selectedGender = GenderOptions.FEMALE;
                        });
                      },
                      color: selectedGender == GenderOptions.FEMALE ? kActiveCardColor : kInactiveCardColor,
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                        titleStyle: kLabelTextStyle,
                      ),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        )
                      ],
                    ),
                    SliderTheme(
                      // SliderTheme.of(context) will copy all current styles, instead of
                      // define all of them. then use copyWith to overwrite some
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double height) {
                            setState(() {
                              this.height = height.round();
                            });
                          }
                      ),
                    )
                  ],
                ),
              )
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: kActiveCardColor)
                  ),
                  Expanded(
                    child: ReusableCard(color: kActiveCardColor)
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomBarColor,
              margin: EdgeInsets.only(top: 8.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ),
      )
    );
  }
}
