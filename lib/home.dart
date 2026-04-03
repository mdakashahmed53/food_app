import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:food_app/butoomBar%20Page/favorite_screen.dart';
import 'package:food_app/butoomBar%20Page/home_screen.dart';
import 'package:food_app/butoomBar%20Page/messege_screen.dart';
import 'package:food_app/butoomBar%20Page/profile_screen.dart';
import 'package:food_app/butoomBar%20Page/sample_screen.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _screen = [
    HomeScreen(),
    ProfileScreen(),
    SampleScreen(),
    MessageScreen(),
    FavoriteScreen()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar:
        ConvexAppBar(

          initialActiveIndex: 2,
          backgroundColor: Colors.red,
          color: Colors.white,

          items: [

            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.person, title: 'Profile'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.favorite, title: 'Favorite'),
          ],
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),


    );
  }
}
