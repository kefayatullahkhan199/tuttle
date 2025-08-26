import 'package:flutter/material.dart';
import 'package:tuttle/configs/app_colors.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final Color fieldColor;
  final TextEditingController controller;
  final bool isObscure;
  final Widget? suffixIcon;


  CustomField(
      {required this.hintText,
      this.fieldColor = Colors.white,
      required this.controller,this.isObscure=false,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: isObscure,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
          constraints: BoxConstraints(maxHeight: 48),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.blackColor,
            fontSize: 12,
            fontFamily: 'asset: fonts/inter_Regular.ttf',
            fontWeight: FontWeight.w500,
          ),
          fillColor: fieldColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey)),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey, width: 1))),
    );
  }
}
