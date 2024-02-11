import 'package:appname/pages/second_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('First Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>SecondScreen(),),);
                Navigator.pushNamed(context, '/second-screen');
              },
              child: Text('First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
