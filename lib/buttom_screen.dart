import 'package:flutter/material.dart';

class ButtomScreen extends StatefulWidget {
  const ButtomScreen({super.key});

  @override
  State<ButtomScreen> createState() => _ButtomScreenState();
}

class _ButtomScreenState extends State<ButtomScreen> {
  @override
  int _selectIndex = 0;
  void _onTapItem(int index){
    setState(() {
      _selectIndex = index;
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttom bar'),

      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Color(0xFFEF2A39),
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){
              _onTapItem(0);
            }, icon: Image.asset('asset/image/home.png', height: 30,),
              color: _selectIndex == 0 ? Colors.white : Colors.black87,

            ),
            IconButton(onPressed: (){
              _onTapItem(1);
            }, icon: Image.asset('asset/image/person.png'),
              color: _selectIndex == 1 ? Colors.white : Colors.black87,

            ),
            SizedBox(width: 40,),
            IconButton(onPressed: (){
              _onTapItem(2);
            }, icon: Image.asset('asset/image/message.png', ),
              color: _selectIndex == 2 ? Colors.white : Colors.black87,

            ),
            IconButton(onPressed: (){
              _onTapItem(3);
            }, icon: Image.asset('asset/image/favorite.png'),
              color: _selectIndex == 3 ? Colors.white : Colors.black87,

            )
          ],
        ),
      ),
      extendBody: false,
      floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.red,
            shape: CircleBorder(),
            elevation: 15,
            child: Image.asset('asset/image/plush.png', scale: 1.1,),
          ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}
