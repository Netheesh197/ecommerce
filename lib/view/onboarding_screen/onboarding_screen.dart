import 'dart:math';

import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/utils/image_constant.dart';
import 'package:ecommerce/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // int currentpage = 1;
  // int totalsteps = 3;
  // nextpage() {
  //   if (currentpage < totalsteps) {
  //     setState(() {
  //       currentpage++;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "1",
              style: GoogleFonts.montserrat(
                   fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "/3",
              style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.GREYSHADE1),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Skip",
                style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstant.FASHIONSHOP1,
                height: 300,
                width: 300,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Choose Products",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: GoogleFonts.montserrat(
                  letterSpacing: 2,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.GREYSHADE2,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Prev",
              style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.GREYSHADE2),
            ),
            
            Text(
              "Next",
              style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.PRIMARY),
            ),
          ],
        ),
      ),
    );
  }
}
