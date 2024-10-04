import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String? buttonText;
  final Function action;
  final bool loading;
  final Color? buttonColor;
  final double? height;
  final TextStyle? textStyle;

  const AuthButton(
      {super.key,
      this.buttonText,
      required this.action,
      this.height,
      this.textStyle,
      required this.loading,
      this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        action();
      },
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: height ?? 15, horizontal: 30),
          backgroundColor: buttonColor ?? Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          )),
      child: Text(
        buttonText ?? 'button',
        style: textStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
