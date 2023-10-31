import 'package:flutter/material.dart';
import '../app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.txtColor,
      this.borderRadius,
      required this.txt,
      this.fontSize});
  final Color backgroundColor;
  final Color txtColor;
  final BorderRadius? borderRadius;
  final String txt;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          txt,
          style: Styles.txtStyle18.copyWith(
              fontWeight: FontWeight.w900, color: txtColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
