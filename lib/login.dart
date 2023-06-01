import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:virtual_courier/googlebuttonlogin.dart';
import 'package:virtual_courier/loginfield.dart';
import 'package:virtual_courier/signup.dart';
//import 'package:virtual_courier/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                    initialLabelIndex: 0,
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
                    "Log In",
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
                    "Welcome to Virtual Courier please fill the details \nbelow to Log In",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 70),
            const LoginField(),
            const Google(),
            Container(height: 100),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color.fromARGB(255, 133, 133, 133),
                  fontSize: 13,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
