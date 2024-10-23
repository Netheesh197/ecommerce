import 'package:ecommerce/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputLogin extends StatelessWidget {

 final String text;
 final void Function()? onButtonPressed;

  const CustomInputLogin({
   super.key,  required this.text, this.onButtonPressed
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onButtonPressed,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstants.PRIMARY,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Center(
          child: Text(text,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: ColorConstants.WHITE
          ),)
        ),
      ),
    );
    
  }
}

