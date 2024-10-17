import 'dart:async';

import 'package:ecommerce/view/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => OnboardingScreen(),));
    },);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Group 34010.png"),
          SizedBox(
            width: 9,
          ),
          Text(
            "Stylish",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 247, 29, 14)),
          )
        ],
      )),
    ));
  }
}