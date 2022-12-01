import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});
  final String? buttonTitle;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle.toString(),
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kActiveBottomColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData? icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF4E536C),
      onPressed: onPressed,
    );
  }
}
