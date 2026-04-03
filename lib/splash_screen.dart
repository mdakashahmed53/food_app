import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SpalshScreenNextPage();
  }

  void SpalshScreenNextPage(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF78CA0),

                  Color(0xFFFD1D1D),
                ])
        ),
        child: Stack(

          children: [
            Positioned(
              top: 282,
              left: 120,

              child: Text('FoodGo', style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 45.sp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal
              ),),
            ),
            Positioned(
                bottom: 0,
                left: 0,

                child: Image.asset('asset/image/berger.png', height: 280, width: 240, fit: BoxFit.cover,)
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset('asset/image/berger_s.png', height: 190, width: 190,))
          ],
        ),
      ),
    );
  }
}
