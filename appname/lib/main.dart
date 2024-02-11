import 'package:appname/bottom_nav_controller.dart';
import 'package:appname/pages/chat.dart';
import 'package:appname/pages/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Box box = await Hive.openBox('contact-list');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      routes: {
        '/nav-screen': (context) =>BottomNavController(),
        '/first-screen': (context) => ChatScreen(),
        '/second-screen': (context) => SecondScreen(),
      },
      initialRoute: '/nav-screen',
     // home: BottomNavController(),
    );
  }
}
