import 'package:ecommerce/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputSearchField extends StatelessWidget {
  const CustomInputSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 9,
            color: ColorConstants.BLACK.withOpacity(.1)
          )]
        ),
        child: TextField(
          decoration: InputDecoration(
            fillColor: ColorConstants.WHITE,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            suffixIcon: Icon(Icons.mic_none,
            color: ColorConstants.GREYSHADE4,),
            prefixIcon: Icon(Icons.search,
            color: ColorConstants.GREYSHADE4,),
            hintText: "Search any product",
            hintStyle: GoogleFonts.montserrat(
              fontSize: 14,
              color: ColorConstants.GREYSHADE4
            )
          ),
        ),
      ),
    );
  }
}