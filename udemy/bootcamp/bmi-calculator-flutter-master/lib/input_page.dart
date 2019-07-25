import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/card_icon.dart';
import 'components/reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomBarColor = Color(0xFFEB1555);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                      color: selectedGender == GenderOptions.MALE ? activeCardColor : inactiveCardColor,
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
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
                      color: selectedGender == GenderOptions.FEMALE ? activeCardColor : inactiveCardColor,
                      cardChild: CardIcon(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(color: activeCardColor)
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: activeCardColor)
                  ),
                  Expanded(
                    child: ReusableCard(color: activeCardColor)
                  ),
                ],
              ),
            ),
            Container(
              color: bottomBarColor,
              margin: EdgeInsets.only(top: 8.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ),
      )
    );
  }
}
