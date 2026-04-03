import 'package:flutter/material.dart';
import 'package:food_app/TabBarView/all_food.dart';
import 'package:food_app/Widget/food.dart';
import 'package:food_app/butoomBar%20Page/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/home.dart';
import 'package:food_app/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

       return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          // routes: {
          //   '/':(context)=>Home(),
          //   '/SplashScreen':(context)=>SplashScreen()
          // },
          // initialRoute: '/SplashScreen',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
            appBarTheme: AppBarThemeData(
              centerTitle: true,
              backgroundColor: Colors.blue
            )
          ),

          home: SplashScreen(),
          title: 'Home Work',
          debugShowCheckedModeBanner: false,
        );

        

      },
      
    );
    


  }
}



