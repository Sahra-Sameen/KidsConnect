import 'package:flutter/material.dart';

class VerifiedSuccessful extends StatelessWidget {
  const VerifiedSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Colors.teal[200]!, Colors.teal[600]!]),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('SuccessFul.png'),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          const Text(
            'Verified Successfully',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            width: 120.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/parentController");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
