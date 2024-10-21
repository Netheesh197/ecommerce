import 'dart:async';

import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/utils/image_constant.dart';
import 'package:ecommerce/view/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body:  Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
           ImageConstant.MYAPPLOGO,
            height: 100,
            width: 125,
            fit: BoxFit.fill,
            ),
          SizedBox(
            width: 9,
          ),
          Text(
            "Stylish",
            style: GoogleFonts.libreCaslonText(
             textStyle:  TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: ColorConstants.PRIMARY),
            )
          )
        ],
      )),
    
    );
  }
}
