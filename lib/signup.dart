import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:virtual_courier/googlebuttonsignup.dart';
import 'package:virtual_courier/login.dart';
import 'package:virtual_courier/signupfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(height: 55),
            Row(
              children: [
                Container(width: 40),
                Container(
                  alignment: Alignment.centerLeft,
                  child: ToggleSwitch(
                    minHeight: 35,
                    minWidth: 90.0,
                    cornerRadius: 20.0,
                    activeBgColors: const [
                      [Color.fromARGB(255, 250, 212, 24)],
                      [Color.fromARGB(255, 250, 212, 24)]
                    ],
                    activeFgColor: const Color.fromARGB(255, 0, 0, 0),
                    inactiveBgColor: const Color.fromARGB(255, 255, 239, 117),
                    inactiveFgColor: const Color.fromARGB(255, 0, 0, 0),
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: const ['Log In', 'Sign Up'],
                    radiusStyle: true,
                    onToggle: (index) {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            Container(height: 55),
            Row(
              children: [
                Container(width: 40),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(height: 10),
            Row(
              children: [
                Container(width: 40),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Welcome to Virtual Courier ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 70),
            const SignUpField(),
            const GoogleSignup(),
            Container(height: 100),
          ]),
        ),
      ),
    );
  }
}
