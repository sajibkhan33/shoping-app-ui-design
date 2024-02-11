import 'package:appname/pages/account.dart';
import 'package:appname/pages/add.dart';
import 'package:appname/pages/chat.dart';
import 'package:appname/pages/home_screen.dart';
import 'package:appname/pages/my_ads.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {


  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    HomeScreen(),
    MyAddScreen(),
    AddScreen(),
    ChatScreen(),
    AccountScreen(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          _currentIndex=index;
          setState(() {

          });
        },
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(
            color: Colors.purple,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.grey,
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,),label: 'My Ads'),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
          ]
      ),
      body: _pages[_currentIndex],
    );
  }
}
