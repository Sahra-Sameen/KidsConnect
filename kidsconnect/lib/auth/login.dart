import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:kidsconnect/auth/signup.dart';
import 'package:kidsconnect/component/authButton.dart';
import 'package:kidsconnect/component/customtextbox.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'appLogo.jpg',
                        width: 100.0, // Set the desired width
                        height: 50.0,
                      ),
                    ),
                  ]),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust the radius as needed
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(20),
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  //width: 400.0,
                  child: Column(
                    children: [
                      Image.asset(
                        'Avatar3.png',
                        width: 200.0, // Set the desired width
                        height: 200.0,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomTextField(
                              prefixIcon: Icons.email,
                              hinttext: "Parent Email",
                            ),
                            const CustomTextField(
                              prefixIcon: Icons.lock,
                              hinttext: "Password",
                              suffixIcon: Icons.remove_red_eye,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ]),

                      const SizedBox(
                          height:
                              20), // Add spacing between text fields and button
                      // const ButtonText(
                      //   buttonText: 'Login',
                      // ),
                      AuthButton(
                        action: () {
                          
                        },
                        loading: true,
                        buttonText: 'Login',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'Don\'t you have an Account? ',
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  // Add the missing 'text' property for the default style
                                  // This should be the text that appears before the clickable "Sign Up" text
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      16.0, // Adjust the font size as needed
                                  color: Colors
                                      .black, // Adjust the color as needed
                                ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed("/signUp");
                                  },
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
