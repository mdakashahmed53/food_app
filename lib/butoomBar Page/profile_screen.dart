import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                // profile section ======================================
                Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: BoxBorder.all(
                          color: Colors.black87,
                          width: 0.2,
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          // User Image
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/v2/D4D03AQFvwSL9TeVHVA/profile-displayphoto-scale_200_200/B4DZiiOC4GGgAc-/0/1755068250704?e=2147483647&v=beta&t=CwZzl7bG0j-wFxX0m4C4TpT4enC29-UIIlLFA5zZEuk',
                            ),
                          ),
                          SizedBox(height: 8),
                          // User Name
                          Text(
                            'John Doe',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),

                          // User Profession
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.5),
                              letterSpacing: 0,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Person Bio
                          Text(
                            'Passionate about crating user-friendly and engaing digital experiences.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7),
                              letterSpacing: 0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Divider(thickness: 1, indent: 20, endIndent: 20),
                          // Person contact information
                          // email
                          ListTile(
                            visualDensity: VisualDensity(
                              horizontal: 0,
                              vertical: -4,
                            ),
                            leading: Icon(Icons.email, size: 25),
                            title: Text('john.doe@example.com'),
                            titleTextStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          //  number
                          ListTile(
                            visualDensity: VisualDensity(
                              horizontal: 0,
                              vertical: -4,
                            ),
                            leading: Icon(Icons.phone, size: 25),
                            title: Text('+123 456 789'),
                            titleTextStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: 0,
                            ),
                          ),
                          SizedBox(height: 5),
                          // User Follow & Message
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 140,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFF0000FF),
                                    foregroundColor: Colors.white,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text('Follow'),
                                ),
                              ),
                              SizedBox(width: 10),

                              SizedBox(
                                height: 50,
                                width: 140,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.black.withOpacity(0.1),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text('Message'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                // Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 130, child: Divider(thickness: 2)),
                    SizedBox(width: 9),
                    Text(
                      'Interests',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 9),
                    SizedBox(width: 130, child: Divider(thickness: 2)),
                  ],
                ),

                SizedBox(height: 10),

                // Card Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      child: Container(
                        height: 190,
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.vertical(
                                  top: Radius.circular(10),
                                ),
                                child: Image.network(
                                  'https://live.staticflickr.com/1482/24161322546_4b26a2fa98_h.jpg',
                                  height: 80,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Travel',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Exploring new place around the word',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                width: double.infinity,
                                height: 30,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300,
                                    foregroundColor: Colors.blue,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'View More',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 5),

                    // Photography card
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      child: Container(
                        height: 190,
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.vertical(
                                  top: Radius.circular(10),
                                ),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG9ncmFwaHl8ZW58MHx8MHx8fDA%3D',
                                  height: 80,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Photography',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Capturing moments through the lens',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(height: 5),
                              SizedBox(
                                width: double.infinity,
                                height: 30,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade300,
                                    foregroundColor: Colors.blue,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'View More',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
