import 'package:flutter/material.dart';

class GoogleSignup extends StatelessWidget {
  const GoogleSignup ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: TextButton.icon(
        onPressed: () {},
        icon: const Image(
          image: AssetImage("images/search.png"),
          height: 20,
        ),
        label: const Text(
          "Sign Up with Google",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
            side: const BorderSide(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}
