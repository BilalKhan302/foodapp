import 'package:flutter/material.dart';
class Form1 extends StatelessWidget {
  Form1({Key? key, required this.hint,required this.icon}) : super(key: key);
  final String hint;
  final Icon icon;
  final TextEditingController _email=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _email,
      decoration: InputDecoration(
        suffixIcon: icon,
        filled: true,
        fillColor: Colors.grey.shade300,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent
          ),
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}
class Form2 extends StatelessWidget {
  Form2({Key? key, required this.hint, required this.icon}) : super(key: key);
  final String hint;
  final Icon icon;
  final TextEditingController _pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _pass,
      decoration: InputDecoration(
        filled: true,
          fillColor: Colors.grey.shade300,
          suffixIcon: icon,
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
  }
}
