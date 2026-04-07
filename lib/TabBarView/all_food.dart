import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Widget/product_details.dart';
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
        'foodDescription':"The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
        'deliveryTime':'20',
        'foodPrice':'8.24',
        
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Veggie Burger",
        'foodRating': '3.9',
        'foodImage': 'asset/image/vaggie.png',
        'foodDescription':"Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
        'deliveryTime':'40',
        'foodPrice':'10.24',
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Chicken Burge",
        'foodRating': '4.5',
        'foodImage': 'asset/image/chicken.png',
        'deliveryTime':'35',
      'foodPrice':'15.24',
        'foodDescription':'Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!'
      },

      {
        'foodNameFrist': 'Hamburger',
        'foodNameLast': "Fried Chicken Burger",
        'foodRating': '4.9',
        'foodImage': 'asset/image/ferid.png',
        'deliveryTime':'10',
        'foodPrice':'26.99',
        'foodDescription':'Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.'
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(foodImage: foodAll[index]['foodImage'], foodTitle: foodAll[1]['foodNameFrist'], foodRating: foodAll[index]['foodRating'], deliveryTime: '20', foodDescription: foodAll[index]['foodDescription'], foodPrice: foodAll[index]['foodPrice'])));
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
