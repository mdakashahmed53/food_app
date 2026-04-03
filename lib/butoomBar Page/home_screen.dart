import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/TabBarView/all_food.dart';
import 'package:food_app/Widget/food.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                titleTextStyle: GoogleFonts.lobster(
                  fontSize: 40.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                subtitleTextStyle: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
                title: Text('FoodGo'),
                subtitle: Text('Order your favourite food!'),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    image: DecorationImage(
                      image: NetworkImage(
                        'https://media.licdn.com/dms/image/v2/D4D03AQFvwSL9TeVHVA/profile-displayphoto-scale_200_200/B4DZiiOC4GGgAc-/0/1755068250704?e=2147483647&v=beta&t=CwZzl7bG0j-wFxX0m4C4TpT4enC29-UIIlLFA5zZEuk',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                  width: 50.w,
                  height: 200.h,
                ),
              ),
              SizedBox(height: 10.h),

              //search bar
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Card(
                      elevation: 2,
                      child: Container(
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: Icon(Icons.search_rounded, size: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  //filter
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 57,
                      width: 80,

                      child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'https://img.icons8.com/ios/50/horizontal-settings-mixer--v2.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),
              // tab bar
              TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFEF2A39),
                  ),

                  controller: _tabController,
                  tabs: [
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      child: Card(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    // tab 2
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      child: Card(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Combos',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),

                    // tab 3
                    Padding(
                      padding: EdgeInsetsGeometry.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Sliders',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              SizedBox(height: 8,),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [AllFood(), Text('Combo'), Text('pakage')],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
