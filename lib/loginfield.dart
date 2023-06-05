import 'package:flutter/material.dart';
import 'package:virtual_courier/navdrawer.dart';
import 'package:virtual_courier/promotion.dart';

class LoginField extends StatefulWidget {
  const LoginField({super.key});

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _nameError = false;
  bool _passwordError = false;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signup() {
    setState(() {
      _nameError = _nameController.text.isEmpty;
      _passwordError = _passwordController.text.isEmpty;
    });

    if (!_nameError && !_passwordError) {
      // Perform signup logic here
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 50,
          child: TextField(
            controller: _nameController,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: const TextStyle(color: Colors.grey),
              errorText: _nameError ? 'Please enter your login Info' : null,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color:  Color.fromARGB(255, 0, 0, 0)),

              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Container(
          width: 300,
          height: 50,
          alignment: Alignment.bottomLeft,
          child: TextField(
            textAlign: TextAlign.start,
            controller: _passwordController,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: const TextStyle(color: Colors.grey),
              errorText: _passwordError ? 'Please enter your Password' : null,
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color:  Color.fromARGB(255, 0, 0, 0)),

              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: 300,
          height: 45,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MyHomePage()),
                );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 250, 212, 24),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
            ),
            child: const Text(
              "Let's Go !",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
