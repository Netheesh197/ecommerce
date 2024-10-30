import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/utils/color_constants.dart';
import 'package:ecommerce/utils/image_constant.dart';
import 'package:ecommerce/view/dummy_db.dart';
import 'package:ecommerce/view/globalwidgets/custom_input_searchfirld.dart';
import 'package:ecommerce/view/home_screen/widgets/custom_card_input.dart';
import 'package:ecommerce/view/home_screen/widgets/deal_card_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              child: Icon(
            Icons.menu,
            size: 24,
          )),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageConstant.MYAPPLOGO,
              height: 31,
              width: 38,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 9,
            ),
            Text("Stylish",
                style: GoogleFonts.libreCaslonText(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.SECONDARY),
                )),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomInputSearchField(),

            SizedBox(
              height: 16,
            ),
            _AllFeaturedSection(), // section1-- All featured,

            SizedBox(
              height: 16,
            ),

            _buildCarouselSection(), // section2- carrousel section

            SizedBox(
              height: 16,
            ),

            _buildDealofTheDay() //section 3-deal of the day
          ],
        ),
      ),
    );
  }

  Widget _buildDealofTheDay() {
    return Column(
      children: [
        CustomDealInput(),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => CustomCardInput(),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCarouselSection() {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: DummyDb.featuredItemList.length,
            options: CarouselOptions(
              height: 189.0,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.bounceIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) => {print(reason)},
              scrollDirection: Axis.horizontal,
            ),
            itemBuilder: (context, index, realIndex) => Container(
                  height: 189,
                  width: 343,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            DummyDb.featuredItemList[index]["image"])),
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        left: 14,
                        child: Column(
                          children: [
                            Text(
                              "50-40 OFF",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstants.WHITE),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Now in (product)\n All colours",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConstants.WHITE),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                      width: 2, color: ColorConstants.WHITE)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Shop Now",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: ColorConstants.WHITE),
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt,
                                      color: ColorConstants.WHITE,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
        SizedBox(
          height: 12,
        ),
        SmoothPageIndicator(
            controller: PageController(initialPage: 1),
            count: 3,
            effect: ScrollingDotsEffect(
              activeStrokeWidth: 1.4,
              activeDotScale: 1.3,
              maxVisibleDots: 5,
              radius: 10,
              spacing: 10,
              dotHeight: 9,
              dotWidth: 9,
            )),
      ],
    );
  }

  Column _AllFeaturedSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text(
                "All Featured",
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                    color: ColorConstants.WHITE,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Text(
                      "sort",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.BLACK),
                    ),
                    Icon(
                      Icons.swap_vert,
                      size: 16,
                      color: ColorConstants.BLACK,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(
                    color: ColorConstants.WHITE,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Text(
                      "Filter",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.BLACK),
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 16,
                      color: ColorConstants.BLACK,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              DummyDb.featuredItemList.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          DummyDb.featuredItemList[index]["image"]),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(DummyDb.featuredItemList[index]["text"]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


