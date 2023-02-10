import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/common/RichText.dart';

import 'OnBoarding_1.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToOnBoarding_1();
  }
  _navigateToOnBoarding_1() async {
   await Future.delayed(Duration(seconds: 2));
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnBoarding_1()));
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset("images/Icon.svg")),
          SizedBox(height: 10,),
          RichText1(),
        ],
      ),
    );
  }
}
