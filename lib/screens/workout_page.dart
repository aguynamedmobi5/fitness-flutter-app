import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/timer_button.dart';
import '../constants.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class WorkOutPage extends StatefulWidget {
  @override
  _WorkOutPageState createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {

  CountDownController _controller = CountDownController();
  bool _isPause = true;
  int duration = 600;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70.0),
                bottomRight: Radius.circular(70.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      FontAwesomeIcons.arrowLeft,
                      color: kColorOrange,
                      size: 35.0,
                    ),
                  ),
                ),
                Text(
                  'Pushups',
                  style: kPrimaryLabelText,
                ),
                Image(
                  image: AssetImage(
                    'images/1.png',
                  ),
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          ),
        ),

        Expanded(
          child: Container(
            color: kBackgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      width: 100.0,
                      height: 55.0,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              '04',
                              style: kNumberedText,
                            ),
                            Text(
                              'sets',
                              style: kSmallText,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      width: 100.0,
                      height: 55.0,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              '10',
                              style: kNumberedText,
                            ),
                            Text(
                              'reps',
                              style: kSmallText,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundIconButton(
                        icon: FontAwesomeIcons.minus, changeTimer: () {setState(() {
                          duration = duration - 60;
                        });}),
                    CircularCountDownTimer(
                      duration: duration,
                      controller: _controller,
                      strokeWidth: 5.0,
                      backgroundColor: Colors.white,
                      height: 150, //MediaQuery.of(context).size.height / 2,
                      width: 150, //MediaQuery.of(context).size.width / 2,
                      color: Colors.white,
                      fillColor: kColorOrange,
                      isReverse: true,
                      isReverseAnimation: true,
                      textStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      isTimerTextShown: true,
                    ),
                    RoundIconButton(
                        icon: FontAwesomeIcons.plus, changeTimer: () {setState(() {
                          duration = duration + 60;
                        });}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(

                      onPressed: (){
                        setState(() {
                          if (_isPause) {
                            _isPause = false;
                            _controller.resume();
                          } else {
                            _isPause = true;
                            _controller.pause();
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                        ),
                        height: 70,
                        width: 215,

                        child: Center(
                          child: _isPause ? Text(
                            'Lets go 💪',
                            style: kPrimaryLabelText,
                          ) : Text(
                            'Take a break ☕',
                            style: kPrimaryLabelText,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
