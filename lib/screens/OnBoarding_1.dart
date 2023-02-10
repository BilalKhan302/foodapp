import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/common/CustomAppBar.dart';
import 'package:foodapp/common/TextStyles.dart';
import 'package:foodapp/common/roundContainer.dart';
import 'package:foodapp/common/siceConfig.dart';

import '../utils/strings.dart';
import 'OnBoarding_2.dart';
class OnBoarding_1 extends StatelessWidget {
  const OnBoarding_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(165)),
                child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.yellow.shade700,
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                child: Column(
                  children: [
                    CustomAppbar1(),
                    SizedBox(
                      height: 110,
                    ),
                    SvgPicture.asset("images/Illustration.svg",
                      height: 180,
                      width: 180,
                    ),
                    SizedBox(height: 60,),
                    Text(Strings.Choose_a_favt,
                      style: TextStyles.title,),
                    SizedBox(height: 20,),
                    Text(Strings.When_you,
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnBoarding_2()));
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
