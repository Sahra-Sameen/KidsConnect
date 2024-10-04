import 'package:flutter/material.dart';
import 'package:kidsconnect/auth/languageSelection.dart';
import 'package:kidsconnect/auth/login.dart';
import 'package:kidsconnect/auth/parentalControl.dart';
import 'package:kidsconnect/auth/signup.dart';
import 'package:kidsconnect/auth/verifiedSuccess.dart';
import 'package:kidsconnect/auth/verify.dart';

final routes = {
  "/": (BuildContext context) => const Login(),
  "/signUp": (BuildContext context) => const SignUp(),
  "/verify": (BuildContext context) => const Verification(),
  "/verifiedSuccess": (BuildContext context) => const VerifiedSuccessful(),
  "/selectLanguages": (BuildContext context) =>  LanguageSelection(),
  "/parentController": (BuildContext context) => ParentalControl(),
};
