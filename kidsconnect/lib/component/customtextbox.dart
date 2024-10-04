import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hinttext;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  const CustomTextField(
      {super.key, this.hinttext, required this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0), // Adjust the margin as needed
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(10.0), // Adjust the radius as needed
        color: Colors.grey[300], // Adjust the background color as needed
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          iconColor: Colors.grey[600],
          hintText: hinttext,
          border: InputBorder.none, // Remove the default border
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String buttonText;
  final VoidCallback action;
  const ButtonText({super.key, required this.buttonText, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        action();
      },
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.amber,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}
