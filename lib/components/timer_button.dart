import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.changeTimer});
  final IconData icon;
  final Function changeTimer;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      onPressed: changeTimer,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 70.0,
        height: 70.0,
      ),
      fillColor: Color(0xFFFFFFFF),
    );
  }
}

