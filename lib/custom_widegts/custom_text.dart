import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final String fontFamily;
  CustomText({
    required this.fontSize,required this.text,required this.fontWeight,required this.fontFamily
});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily
      ),
    );
  }

}
