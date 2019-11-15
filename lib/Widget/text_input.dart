import 'package:flutter/material.dart';

class TextInType extends StatelessWidget{

  final String hintText;
  final String labelText;
  final bool isPassword;
  final bool isEmail;
  final TextEditingController controller;
  final Icon icon;

  TextInType({
    this.hintText,
    this.labelText,
    this.isPassword = false,
    this.isEmail = false,
    this.controller,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          labelText: labelText,
          contentPadding: EdgeInsets.all(15.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        obscureText: isPassword ? true : false,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );

  }

}