import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Food extends StatelessWidget {
  final String imgLink, foodTitle, rating;
  
  const Food({required this.imgLink, required this.foodTitle, required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 180.h,
              width: 130.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(imgLink, height: 100.h),
                  Text(
                    foodTitle,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('asset/image/rating.png', height: 30.h),
                          Text(rating, style: GoogleFonts.roboto(fontSize: 20.sp)),
                        ],
                      ),

                      Icon(Icons.favorite_border_sharp, size: 30),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
