import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCardInput extends StatelessWidget {
  const CustomCardInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
                height: 124,
                width: 170,
                fit: BoxFit.cover,
                "https://images.pexels.com/photos/29117255/pexels-photo-29117255/free-photo-of-woman-with-bicycle-and-tote-bag-on-urban-street.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            textAlign: TextAlign.start,
            "Women Printed Kurta",
            style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ColorConstants.BLACK),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            textAlign: TextAlign.start,
            "Women Printed Kurta",
            style: GoogleFonts.montserrat(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: ColorConstants.BLACK),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            textAlign: TextAlign.start,
            "₹1500",
            style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ColorConstants.BLACK),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                "2499",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.GREYSHADE4,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: ColorConstants.GREYSHADE4),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "40%off",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.GREYSHADE4,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: ColorConstants.ORANGE),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              RatingBar.readOnly(
                filledIcon: Icons.star,
                size: 14,
                emptyIcon: Icons.star_border,
                initialRating: 4,
                maxRating: 5,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "56890",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.ORANGE),
              )
            ],
          )
        ],
      ),
    );
  }
}
