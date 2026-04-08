import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/TabBarView/all_food.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  int selectedIndex = 0;

  final List<String> categories = [
    'All',
    'Combos',
    'Sliders',
    'Classic',
    'Old',
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: categories.length, vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget buildTab(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          _tabController.animateTo(index);
        });
      },
      child: Card(
        elevation: 0,
        color: selectedIndex == index
            ? Colors.red
            : const Color(0XFFF3F4F6),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: selectedIndex == index
                    ? Colors.white
                    : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
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
                title: const Text('FoodGo'),
                subtitle: const Text('Order your favourite food!'),
                trailing: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://media.licdn.com/dms/image/v2/D4D03AQFvwSL9TeVHVA/profile-displayphoto-scale_200_200/B4DZiiOC4GGgAc-/0/1755068250704?e=2147483647&v=beta&t=CwZzl7bG0j-wFxX0m4C4TpT4enC29-UIIlLFA5zZEuk',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              /// SEARCH BAR
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Card(
                      elevation: 2,
                      child: Container(
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: const Icon(
                                Icons.search_rounded,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 57,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              /// TAB BAR
              TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: Colors.transparent,
                overlayColor:
                const WidgetStatePropertyAll(Colors.transparent),
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                padding: EdgeInsets.zero,
                labelPadding: const EdgeInsets.only(right: 8),

                tabs: List.generate(
                  categories.length,
                      (index) => buildTab(categories[index], index),
                ),
              ),

              SizedBox(height: 8),

              /// TAB VIEW
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AllFood(),
                    Center(child: Text('Combo')),
                    Center(child: Text('Sliders')),
                    Center(child: Text('Classic')),
                    Center(child: Text('Old')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}