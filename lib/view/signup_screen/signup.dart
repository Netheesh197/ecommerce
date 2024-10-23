import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/view/globalwidgets/custom_inpot_logos.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_filed.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 32),
          child: Column(
            children: [
              Text("Create an\n account",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: ColorConstants.BLACK,
                  )
                ),
                SizedBox(height: 33,),
                CustomInputTextfield(
                    hinttext: "Username or Email",
                    prefixIcon: Icons.person,
                ),
                SizedBox(height: 31,),
                CustomInputTextfield(
                  hinttext: "Password",
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility_outlined,
                ),
                SizedBox(height: 31,),
                CustomInputTextfield(
                  hinttext: "ConfirmPassword",
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility_outlined,
                ),
                SizedBox(height: 19,),
                Text(
                  "By clicking the Register button, you agree to the public offer",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: ColorConstants.HINTTEXT1
                  ),
                  ),
                SizedBox(height: 38,),

                CustomInputLogin(text: "Create Account"),
                SizedBox(height: 40,),
                 Text("- OR Continue with -",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: ColorConstants.ORCOLOR
              ),
             ),
             SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomInputLogos(
                    image: "assets/images/googlelogo.png",
                  ),
                  SizedBox(width: 10,),
                  CustomInputLogos(
                  image: "assets/images/apple 1.png",
                  ),
                  SizedBox(width: 10,),
                  CustomInputLogos(
                    image: "assets/images/facebooklogo.png",
                  )
                ],
               ),
               SizedBox(height: 20,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I Alredy Have an Account",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.ORCOLOR
                    ),),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                            builder: (context) => Signup(),));
                      },
                      child: Text("Login",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.PRIMARY
                      ),),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
