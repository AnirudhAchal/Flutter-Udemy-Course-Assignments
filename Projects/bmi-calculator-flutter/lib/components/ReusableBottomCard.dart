import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableBottomCard extends StatelessWidget {
  ReusableBottomCard({this.text, this.onTap});
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Center(
          child: Text(
            this.text,
            style: kBottomContainerTextStyle,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: kBottomContainerColor,
        ),
        margin: EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
