import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              FontAwesomeIcons.bars,
              color: kColorOrange,
              size: 35.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Today',
            style: kPrimaryLabelText,
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                cardImage: Image(
                  image: AssetImage('images/1.png'),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardImage: Image(
                  image: AssetImage('images/10.png'),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                cardImage: Image(
                  image: AssetImage('images/4.png'),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardImage: Image(
                  image: AssetImage('images/12.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Image cardImage;
  final String workoutName;
  ReusableCard({this.cardImage, this.workoutName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0x40000000),
                  blurRadius: 4.0,
                  offset: Offset(-5.0, -5.0),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: cardImage),
      ],
    );
  }
}
