import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'intro2.dart';
import 'login.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            Container(height: 45),
            Row(
              children: [
                Container(
                  width: 15,
                ),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 30,
                ),
              ],
            ),
            Container(
              height: 70,
            ),
            Container(
              height: 300,
              alignment: Alignment.bottomCenter,
              child: Image.asset('images/intro_1.png'),
            ),
            Container(
              height: 20,
            ),
            Container(
              child: const Text(
                "Easy Pickup & Delivery",
                style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "On-demand pickup is available along with\n\t\t\t\t\t\t easy delivery powered by Akshaak to\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  avoid any hassle",
                style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 112, 108, 108),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 30,
            ),
            Container(
              child: CircularPercentIndicator(
                radius: 30,
                percent: 0.33,
                lineWidth: 3,
                center: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 246, 205, 0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Intro2()),
                    );
                  },
                ),
                progressColor: const Color.fromARGB(255, 250, 219, 16),
              ),
            ),

          ],
        ),
      ),
    );
  }
}