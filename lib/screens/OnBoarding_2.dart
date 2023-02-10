import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/common/CustomAppBar.dart';
import 'package:foodapp/common/TextStyles.dart';
import 'package:foodapp/common/roundContainer.dart';
import 'package:foodapp/common/siceConfig.dart';

import '../utils/strings.dart';
import 'OnBoarding_2.dart';
import 'OnBoarding_3.dart';
class OnBoarding_2 extends StatelessWidget {
  const OnBoarding_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(165)),
                child: Container(
                  height: 440,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
            child: Column(
              children: [
                CustomAppbar1(),
                SizedBox(
                  height: 50,
                ),
                SvgPicture.asset("images/Illustration (1).svg",
                  height: 180,
                  width: 180,
                ),
                SizedBox(height: 110,),
                Text(Strings.Hot_home,
                  style: TextStyles.title,),
                SizedBox(height: 20,),
                Text(Strings.We_make,
                  textAlign: TextAlign.center,
                  style: TextStyles.body,),
                SizedBox(
                  height: 20,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow.shade700.withOpacity(0.6),

                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 5,
                      width: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow.shade700,

                      ),
                    ),


                    SizedBox(width: 10,),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow.shade700.withOpacity(0.6),

                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    InkWell(
                        onTap: (){},
                        child: Text(Strings.Skip,style: TextStyles.body,)
                    ),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.yellow.shade700,
                            minimumSize: Size(100,40)
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnBoarding_3()));
                        },
                        child: Text("Next"))
                  ],
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
