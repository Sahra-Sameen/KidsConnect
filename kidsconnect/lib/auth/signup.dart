import 'package:flutter/material.dart';
import 'package:kidsconnect/component/customtextbox.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'appLogo.jpg',
                width: 100.0,
                height: 50.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(25),
              margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomTextField(
                    prefixIcon: Icons.person,
                    hinttext: "User name",
                  ),
                  const CustomTextField(
                    prefixIcon: Icons.email,
                    hinttext: "Parent Email",
                  ),
                  const CustomTextField(
                    prefixIcon: Icons.lock,
                    hinttext: "Password",
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  const CustomTextField(
                    prefixIcon: Icons.lock,
                    hinttext: "Confirm Password",
                    suffixIcon: Icons.remove_red_eye,
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/verify");
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.amber),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
