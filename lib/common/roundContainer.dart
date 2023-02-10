import 'package:flutter/material.dart';
class RoundContainer extends StatelessWidget {
  const RoundContainer({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(170)),
      child: Container(
        height: 350.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.yellow.shade700,
      ),
    );
  }
}
