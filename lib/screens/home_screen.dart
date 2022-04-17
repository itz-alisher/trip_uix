import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_uix/global/app_colors.dart';
import 'boarding_cards.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Container for header
            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  ///Container for welcoming text
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Ali Shair!",
                          style: GoogleFonts.poppins(
                              color: AppColors.veryLightTextColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Text(
                          "Saved\nDestinations",
                          style: GoogleFonts.playfairDisplay(
                              color: AppColors.darkTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 36),
                        )
                      ],
                    ),
                  ),

                  ///Profile Picture
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: AppColors.whiteBackground,
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("assets/dp.jpg"),
                      ),
                    ),
                    right: 0,
                    top: 0,
                  )
                ],
              ),
            ),

            ///vertical spacing
            SizedBox(
              height: 16,
            ),

            ///Container for actionables
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top",
                    style: GoogleFonts.poppins(
                      color: AppColors.lightGreenColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoardingCards()));
                    },
                    child: Text(
                      "Boarding cards",
                      style: GoogleFonts.poppins(
                        color: AppColors.veryLightTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: AppColors.veryLightTextColor,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),

            ///vertical spacing
            SizedBox(
              height: 16,
            ),
            ///Container for places list
            Expanded(
              child: Container(
                child: LayoutGrid(
                  columnGap: 12,
                  rowGap: 12,
                  columnSizes: [
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(1),

                    ///means 50% to both columns
                  ],
                  rowSizes: [
                    ///three rows
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(0.6),
                    FlexibleTrackSize(1),

                    ///means first and third row will share same space but second will take 1/6 height compare to others
                  ],
                  children: [
                    ///Lets make container for each elements
                    getPlaceWidget("assets/5.svg").withGridPlacement(
                        rowStart: 0, columnStart: 0, rowSpan: 2),
                    getPlaceWidget("assets/3.svg").withGridPlacement(
                        rowStart: 2, columnStart: 0, rowSpan: 1),
                    getPlaceWidget("assets/2.svg").withGridPlacement(
                        rowStart: 0, columnStart: 1, rowSpan: 1),
                    getPlaceWidget("assets/4.svg").withGridPlacement(
                        rowStart: 1, columnStart: 1, rowSpan: 2),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getPlaceWidget(imagePath) {
    return GestureDetector(
      onTap: (){

        ///For going on next screen
        Navigator.push(context, MaterialPageRoute(
          ///Send image path as we have setted it as tag of hero
            builder: (context) => DetailScreen(imagePath)
        ));
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.lightRedColor),
          child: Stack(
            children: [
              Hero(
                ///For hero animation on route transition
                tag: imagePath,
                child: ClipRRect(
                  child: SvgPicture.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              ///For Distance and title
              Positioned(
                top: 16,
                left: 45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        Text(
                          "28 December 2021",
                          style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: Colors.white54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Pakistan",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    ///Distance
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.lightTextColor,
                          size: 22,
                        ),
                        SizedBox(
                          width: 4,
                          height: 65,
                        ),
                        Text(
                          "125 Km",
                          style: GoogleFonts.poppins(
                            color: AppColors.veryLightTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}