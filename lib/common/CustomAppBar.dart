import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/common/RichText.dart';
import 'package:foodapp/common/siceConfig.dart';
class CustomAppbar1 extends StatelessWidget {
  const CustomAppbar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("images/Icon.svg",height: 45,width: 45,),
          SizedBox(width: 10,),
          RichText2()
        ],

    );
  }
}
class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("images/Icon.svg",height: 45,width: 45,),
          SizedBox(width: 10,),
          RichText1(),
        ],
    );
  }
}

