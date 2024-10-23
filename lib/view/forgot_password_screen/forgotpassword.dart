import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_filed.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Forgot\npassword?",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: ColorConstants.BLACK,
                  )),
                  SizedBox(height: 34,),
                  CustomInputTextfield(
                    hinttext: "Enter your Email Adress",
                    prefixIcon: Icons.mail,
                  ),
                  SizedBox(height: 26,),
                  Text("* We will send you a message to set or reset your new password",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: ColorConstants.HINTTEXT1
                  ),
                  ),
                  SizedBox(height:26,),
                  CustomInputLogin(text: "Submit")
            ],
          ),
        ),
      ),
    );
  }
}