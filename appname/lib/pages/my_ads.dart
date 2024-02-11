
import 'package:flutter/material.dart';

class MyAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('My Ads'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'My Ads',
              ),
              Tab(
                text: 'My Favourites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 140,
                        color: Colors.amber,
                      ),
                      Positioned(
                        top: -50,
                        child: Image.asset(
                          'assets/images/apple.png',
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text('Apple Watch'),
                      subtitle: Text('Series 6 . Red'),
                      trailing: Text('\$350'),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text('Apple Watch'),
                      subtitle: Text('Series 6 . Red'),
                      trailing: Text('\$350'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
