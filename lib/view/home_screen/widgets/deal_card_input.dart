import 'package:ecommerce/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDealInput extends StatelessWidget {
  const CustomDealInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.only(right: 12, left: 8, top: 8, bottom: 8),
        decoration: BoxDecoration(
            color: ColorConstants.SECONDARY,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deal of the Day",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.WHITE),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: ColorConstants.WHITE,
                      size: 13,
                    ),
                    SizedBox(
                      width: 5.5,
                    ),
                    Text(
                      "22h 55m 20s remaining",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: ColorConstants.WHITE),
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.WHITE, width: 1),
                  borderRadius: BorderRadius.circular(4)),
              child: Row(
                children: [
                  Text(
                    "View All",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.WHITE),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: ColorConstants.WHITE,
                    size: 22,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
