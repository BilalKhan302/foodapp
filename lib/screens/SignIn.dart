import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/common/CustomAppBar.dart';
import 'package:foodapp/common/TextFormField.dart';
import '../common/TextStyles.dart';
import '../utils/strings.dart';
final _auth=FirebaseAuth.instance;
UserCredential? user;
final TextEditingController _email=TextEditingController();
final TextEditingController _pass=TextEditingController();
class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              CustomAppbar2(),
              SizedBox(height: 50,),
              Center(
                child: Text(Strings.Let_s,
             style: TextStyles.title,
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text(Strings.welcome_back,
                style: TextStyles.body,),
              ),
              SizedBox(
                height: 40,
              ),
              Text(Strings.Email,style:
                TextStyles.email_password,),
              SizedBox(height:5,),
              Form1(hint: "hint", icon: Icon(Icons.check_circle_outline,color:
                Colors.green,)),
              SizedBox(height: 5,),
              Text(Strings.Password,style: TextStyles.email_password,),
              SizedBox(height: 5,),
              Form2(hint: "Password", icon: Icon(Icons.remove_red_eye_outlined))

            ],
          ),
        ),
      ),
    );
  }
}
