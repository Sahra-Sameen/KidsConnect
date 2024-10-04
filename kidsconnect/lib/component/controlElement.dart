import 'package:flutter/material.dart';

class ControlElement extends StatelessWidget {
  final String? controlName;

  const ControlElement({Key? key, this.controlName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            controlName ?? 'control',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        // Example of a toggle button
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 1,
          child: const Icon(
            Icons.toggle_on,
            color: Colors.white,
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 1.0, // Set the desired thickness of the line
          height:
              10.0, // Set the desired height of the space above and below the line
        )
      ],
    );
  }
}
