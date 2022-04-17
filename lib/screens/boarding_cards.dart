import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_uix/global/app_colors.dart';

class BoardingCards extends StatelessWidget {
  const BoardingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          ListTile(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            trailing: Icon(Icons.search),
          ),
          Text(
            "  Boarding\n  cards",
            style: GoogleFonts.playfairDisplay(
                color: AppColors.darkTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 36),
          ),
          Card(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
            elevation: 8,
            child: SizedBox(
              width: 400,
              height: 100,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('NYC',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('New York',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('28, December 2021',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SFO',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('San Francisco',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('2 adult',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 7,
                    indent: 7,
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 112,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.flight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
            elevation: 8,
            child: SizedBox(
              width: 400,
              height: 100,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LAS',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Las Vegas',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('24, December 2021',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('BOS',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Boston',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('1 adult',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 7,
                    indent: 7,
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 112,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.flight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
            elevation: 8,
            child: SizedBox(
              width: 400,
              height: 100,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LAX',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Las Anglese',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('8, May 2021',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('OMA',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Omaha',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('1 adult',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 7,
                    indent: 7,
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 112,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.flight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
            elevation: 8,
            child: SizedBox(
              width: 400,
              height: 100,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('LAX',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Los Anglese',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('9, May 2021',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SFO',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('San Francisco',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('2 adult',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 7,
                    indent: 7,
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 112,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.flight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
            elevation: 8,
            child: SizedBox(
              width: 400,
              height: 100,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('AUS',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Austin',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('12, December 2021',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 116,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('IND',
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Text('Indianapolis',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black26,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        Text('4 adult',
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.black54,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 3,
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 7,
                    indent: 7,
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    width: 112,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.flight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
