import 'package:ecommerce/utils/color_constants.dart';
import 'package:flutter/material.dart';

class CustomInputLogos extends StatelessWidget {

  String? image;
   CustomInputLogos({
    this.image
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorConstants.GOOGLE,
          border: Border.all(color: ColorConstants.PRIMARY)
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset(image!),
        ),
      ),
    );
  }
}

