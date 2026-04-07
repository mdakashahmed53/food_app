import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.foodImage, required this.foodTitle, required this.foodRating, required this.deliveryTime, required this.foodDescription, required this.foodPrice});

  // final String foodImage, foodTitle, foodRating, deliveryTime, foodDescription, foodPrice;
  final String foodImage;
  final String foodTitle ;
  final String foodRating ;
  final String deliveryTime ;
  final String foodDescription ;
  final String foodPrice ;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  double _currentSliderValue = 60;
  int portion = 0;





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  IconButton(
                    
                    onPressed: (){}, icon: Icon(Icons.search_rounded, size: 30,))
                ],
              ),


              Image.asset(widget.foodImage,
                height: 290,
                width: 290,
                fit: BoxFit.contain,
              ),

              SizedBox(
                width: double.infinity,
                child: Text(widget.foodTitle, style: GoogleFonts.roboto(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF3C2F2F),
                ),),
              ),

              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  // rating image
                  Image.asset('asset/image/rating.png', height: 20,),
                  SizedBox(
                    width: 5,
                  ),
                  // text rating
                  Text(widget.foodRating, style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7)
                  ),),
                  SizedBox(
                    width: 5,
                  ),
                  // delivery time
                  Text('- ${widget.deliveryTime} mins', style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7)
                  ),)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // food description
              Text(widget.foodDescription, style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.7)
              ),),
              SizedBox(
                height: 20,
              ),
              
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 // spicy
                 Container(


                   width: 160,
                   child: Column(
                     children: [
                       SizedBox(
                           width: double.infinity,
                           child: Text('Spicy', style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                           ),)),

                       SizedBox(
                         width: 200,
                         child: Slider(
                             activeColor: Colors.red,
                             label: _currentSliderValue.round().toString(),
                             max: 100,
                             min: 0,
                             value: _currentSliderValue, onChanged: (value){
                           setState(() {
                             _currentSliderValue = value;
                           });
                         }),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Mild', style: TextStyle(
                               fontSize: 15,
                               color: Colors.green,
                               fontWeight: FontWeight.bold
                           ),),

                           Text('Hot', style: TextStyle(
                               fontSize: 15,
                               color: Colors.green,
                               fontWeight: FontWeight.bold
                           ),),

                         ],
                       )

                     ],
                   ),
                 ),


                 // portion
                 Container(
                   width: 180,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       SizedBox(
                           width:double.infinity,
                           child: Text('Portion', style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                           ),)),
                       Row(
                         children: [

                           SizedBox(
                             width: 50,
                             height: 50,
                             child: ElevatedButton(onPressed: (){
                               setState(() {
                                if(portion !=0){
                                  setState(() {
                                    portion--;
                                  });
                                }
                               });
                             },
                                 style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.red,
                                     foregroundColor: Colors.white,
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),

                                     )
                                 ),
                                 child: Text('-', style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                 ),)

                             ),

                           ),
                           SizedBox(
                             width: 5,
                           ),
                           Text('$portion', style: GoogleFonts.inter(
                               fontWeight: FontWeight.w700,
                               fontSize: 30
                           ),),
                           SizedBox(
                             width: 10,
                           ),


                           ElevatedButton(
                             onPressed: () {
                               setState(() {
                                 portion++;
                               });
                             },
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.red,
                               foregroundColor: Colors.white,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               alignment: Alignment.center, // 👈 This fixes it
                               padding: EdgeInsets.zero,    // 👈 Optional: removes extra spacing
                             ),
                             child: Text(
                               '+',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 30,
                               ),
                             ),
                           )


                         ],
                       )
                     ],
                   ),
                 )


               ],
             )


            ],
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // product price button
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text('\$${widget.foodPrice}',style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white
                    ),),
                  ),
                ),
              ),

              // order now button
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 70,
                  width: 235,
                  decoration: BoxDecoration(
                      color: Color(0XFF3C2F2F),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text('ORDER NOW',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
