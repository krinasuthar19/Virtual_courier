import 'package:flutter/material.dart';
import 'package:virtual_courier/placeorder.dart';
import 'package:virtual_courier/profile.dart';
import 'package:virtual_courier/promotion.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          child: const Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("images/profile.png"),
                                    width: 70,
                                    height: 70,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              child: Text(
                                "Edward Mwongera",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 30,
                              child: TextButton(
                                child: Text(
                                  "View profile",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Profile()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 0,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.person_rounded),
                  Container(
                    width: 10,
                  ),
                  Text("Profile"),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.credit_card),
                  Container(
                    width: 10,
                  ),
                  Text("Payments"),
                ],
              ),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.description),
                  Container(
                    width: 10,
                  ),
                  Text("Orders"),
                ],
              ),
              onTap: () {
                // Handle drawer item click
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.percent),
                  Container(
                    width: 10,
                  ),
                  Text("Promotions"),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Promo()),
                );
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.help_outlined),
                  Container(
                    width: 10,
                  ),
                  Text("Help"),
                ],
              ),
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Placeorder()),
                      );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 55),
            Row(children: [
              Container(width: 40),
              FloatingActionButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: Icon(Icons.menu),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
