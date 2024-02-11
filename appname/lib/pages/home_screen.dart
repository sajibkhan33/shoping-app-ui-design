import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> categories = [
    'Electronics',
    'Food',
    'Clothes',
    'Groceries',
    'Cosmetics'
  ];
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello Sajib,',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600,
                      fontFamily: 'SquarePeg-Regular')),
              Text('lets gets something',
                  style: TextStyle(fontSize: 14, color: Color(0xFF4F4C4C))),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                //width: double.maxFinite,
                //width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 120,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('40% off During\n Covid19.',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/images/fruit.png',
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('40% off During\n Covid19.',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/images/fruit.png',
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('40% off During\n Covid19.',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/images/fruit.png',
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ctegories',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      'view all',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 12),
                            child: Center(child: Text(categories[index])),
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  //height: 500,
                  child: GridView.builder(
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.65,
                      ),
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 5,
                          child: Container(
                            child: Center(child: Text(index.toString())),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
