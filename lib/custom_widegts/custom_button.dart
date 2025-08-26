import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuttle/configs/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color containerColor;
  final Color textColor;
  final Color borderColor;

  const CustomButton({super.key,
    required this.text,
     this.height = 48,
    required this.width,
    required this.containerColor, required this.textColor, required this.borderColor ,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: containerColor, border: Border.all(color: borderColor),borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(text, style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: textColor,),),
      ),
    );
  }
}
