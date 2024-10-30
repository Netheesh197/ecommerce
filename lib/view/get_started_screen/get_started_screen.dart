import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/utils/image_constant.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_login.dart';
import 'package:ecommerce/view/home_screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              ImageConstant.GETSTARTEDBG))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(top: 70,bottom: 34,left: 37,right: 37),
               decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors:[
                  ColorConstants.BLACK.withOpacity(0),
                  ColorConstants.BLACK.withOpacity(.5),
                  ColorConstants.BLACK.withOpacity(.6),
                  ColorConstants.BLACK.withOpacity(.7),
                ])
               ),
               child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "You want Authentic, here you go!",
                  style: GoogleFonts.montserrat(
                    color: ColorConstants.WHITE,
                    fontSize: 34,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  SizedBox(height: 14,),
                  Text(
                    textAlign: TextAlign.center,
                    "Find it here, Buy it now!",
                  style: GoogleFonts.montserrat(
                    color: ColorConstants.WHITE,
                    fontSize: 14,
                  ),
                  ),
                  SizedBox(height: 44,),
                  CustomInputLogin(text: "Get Started",
                  onButtonPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),));
                  },)
                ],
               ),
            )
          ],
        ),
      )
      
      
    );
  }
}