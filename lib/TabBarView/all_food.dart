import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AllFood extends StatelessWidget {
  const AllFood({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> foodAll = [
      {
        'foodNameFrist': 'Cheeseburger',
        'foodNameLast': "Wendy's Burger",
        'foodRating': '4.0',
        'foodImage': 'asset/image/img.png',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Veggie Burger",
        'foodRating': '3.9',
        'foodImage': 'asset/image/vaggie.png',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Chicken Burge",
        'foodRating': '4.5',
        'foodImage': 'asset/image/chicken.png',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Fried Chicken Burger",
        'foodRating': '4.9',
        'foodImage': 'asset/image/ferid.png',
      },
      {
        'foodNameFrist': 'Cheeseburger',
        'foodNameLast': "Wendy's Burger",
        'foodRating': '4.0',
        'foodImage': 'asset/image/img.png',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Veggie Burger",
        'foodRating': '3.9',
        'foodImage': 'asset/image/vaggie.png',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Chicken Burge",
        'foodRating': '4.5',
        'foodImage': 'asset/image/chicken.png',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Fried Chicken Burger",
        'foodRating': '4.9',
        'foodImage': 'asset/image/ferid.png',
      },
    ];

    return Scaffold(
      body: GridView.builder(
        itemCount: foodAll.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),

        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              
            },
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Image.asset(foodAll[index]['foodImage'], height: 70.h, width: 70.w),
                    Text(
                      foodAll[index]['foodNameFrist'],
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Colors.black87
                      ),
                    ),
                    Text(
                      foodAll[index]['foodNameLast'],
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Colors.grey.shade600
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('asset/image/rating.png', height: 15.h),
                              SizedBox(width: 4),
                              Text(
                                foodAll[index]['foodRating'],
                                style: GoogleFonts.roboto(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
            
                          Icon(Icons.favorite_border_sharp, size: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
