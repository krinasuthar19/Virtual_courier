import 'package:flutter/material.dart';
import 'package:virtual_courier/entercode.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(height: 55),
              Row(
                children: [
                  Container(width: 40),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 221, 218, 218),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(width: 30),
                  const Text(
                    "Promotion",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(width: 30),
                ],
              ),
              Container(
                height: 20,
              ),
              Divider(
                color: Colors.black,
                height: 25,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.percent_outlined,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Code()),
                      );
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Code()),
                      );
                    },
                    child: Text(
                      "Enter promo code",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                height: 10,
              ),
              Container(
                width: 1000,
                height: 7,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 238, 238, 238),
                ),
              ),
              Container(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                  ),
                  Text(
                    "Your Promotions",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 330,
                    height: 90,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Text(
                              "25% discount for 10 Orders",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Text(
                              "Maximum discount Ksh 200",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 1,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(height: 5,),
                        Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Text(
                              "10 hours left",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 330,
                    height: 90,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Text(
                              "20% discount for 10 Orders",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Text(
                              "Maximum discount Ksh 200",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          height: 10,
                          thickness: 1,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Container(height: 5,),
                        Row(
                          children: [
                            Container(
                              width: 15,
                            ),
                            Text(
                              "10 hours left",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(height: 225),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 212, 24),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    child: const Text(
                      "Redeem New Promo Code",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  ),
                ],
              
              ),
            ],
          ),
        ),
      ),
    );
  }
}
