import 'package:ecommerce/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputTextfield extends StatelessWidget {
  String? hinttext;
  IconData? prefixIcon;
  IconData?suffixIcon;
     
   CustomInputTextfield({
    this.hinttext,this.prefixIcon,this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.TEXTFIELDCOLOR,
        hintText: hinttext,
        hintStyle: GoogleFonts.montserrat(
          color: ColorConstants.HINTTEXT1,
          fontWeight: FontWeight.w600,
          fontSize: 12
        ),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorConstants.GREYSHADE2,
            )
        )
      ),
    );
  }
}