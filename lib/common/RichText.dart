import 'package:flutter/material.dart';
class RichText1 extends StatelessWidget {
  const RichText1({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      children: [
        TextSpan(
            text: "Up", style: TextStyle(color: Colors.black,
            fontFamily: "Mulish",
            fontSize: 30,
            fontWeight: FontWeight.w900)
        ),
        TextSpan(
            text: "Lit",
            style: TextStyle(color: Colors.yellow.shade700,
                fontFamily: "Mulish",
                fontSize: 30,
                fontWeight: FontWeight.w900)
        )

      ],
    ),);
  }
}
class RichText2 extends StatelessWidget {
  const RichText2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      children: [
        TextSpan(
            text: "Up", style: TextStyle(color: Colors.black,
            fontFamily: "Mulish",
            fontSize: 35,
            fontWeight: FontWeight.w900)
        ),
        TextSpan(
            text: "Lit",
            style: TextStyle(color: Colors.white,
                fontFamily: "Mulish",
                fontSize: 35,
                fontWeight: FontWeight.w900)
        )

      ],
    ),);
  }
}

