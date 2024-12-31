import 'package:flutter/material.dart';

class TwoTextOFtextSpan extends StatelessWidget {
  const TwoTextOFtextSpan(
      {super.key,
      required this.text1,
      required this.text2,
      required this.color1,
      required this.color2});

  final String text1;
  final String text2;
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Text.rich(TextSpan(children: [
        TextSpan(
          text: text1,
          style: TextStyle(
            color: color1,
          ),
        ),
        TextSpan(
          text: text2,
          style: TextStyle(
            color: color2,
            decoration: TextDecoration.underline,
          ),
        ),
      ])),
    );
  }
}
