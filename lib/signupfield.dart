import 'package:flutter/material.dart';
//import 'package:virtual_courier/screen/map1.dart';

class SignUpField extends StatefulWidget {
  const SignUpField({super.key});

  @override
  State<SignUpField> createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<SignUpField> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _fnameError = false;
  bool _passwordError = false;
  bool _lnameError = false;
  bool _emailError = false;

  bool _isVisible = false;
  bool _hasPasswordOneNumber = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      hasUppercase = false;
      if (password.contains(RegExp(r'[A-Z]'))) hasUppercase = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) _hasPasswordOneNumber = true;

      hasSpecialCharacters = false;
      if (password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        hasSpecialCharacters = true;
      }
    });
  }

  @override
  void dispose() {
    _fnameController.dispose();
    _passwordController.dispose();
    _lnameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _signup() {
    setState(() {
      _fnameError = _fnameController.text.isEmpty;
      _passwordError = _passwordController.text.isEmpty;
      _lnameError = _lnameController.text.isEmpty;
      _emailError = _emailController.text.isEmpty;
    });

    if (!_fnameError && !_lnameError && !_emailError && !_passwordError) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 140,
                  height: 50,
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: _lnameController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      hintText: "First Name",
                      hintStyle: const TextStyle(color: Colors.grey),
                      errorText: _lnameError ? 'Enter First Name' : null,
                    ),
                  ),
                ),
                Container(
                  width: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  alignment: Alignment.bottomLeft,
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: _fnameController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide:
                        BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      hintText: "Last Name",
                      hintStyle: const TextStyle(color: Colors.grey),
                      errorText: _fnameError ? 'Enter Last Name' : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: 300,
            height: 50,
            alignment: Alignment.bottomLeft,
            child: TextField(
              textAlign: TextAlign.start,
              controller: _emailController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                  BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                hintText: "Email",
                hintStyle: const TextStyle(color: Colors.grey),
                errorText: _emailError ? 'Please enter your Email' : null,
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
              onChanged: (password) => onPasswordChanged(password),
              obscureText: !_isVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: _isVisible
                      ? const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  )
                      : const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                  BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                hintText: "Password",
                hintStyle: const TextStyle(color: Colors.grey),
                errorText: _passwordError ? 'Please enter your Password' : null,
              ),
            ),
          ),
          Container(
            height: 10,
          ),
          SizedBox(
            height: 30,
            width: 300,
            child: _isVisible? const Text(
              "Seems good, we suggest to make it strongers",
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ): null,
          ),
          SizedBox(
            height: 30,
            width: 300,
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: hasUppercase
                          ? const Color.fromARGB(255, 255, 226, 35)
                          : Colors.transparent,
                      border: hasUppercase
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Contains at least one uppercase",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 30,
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: _hasPasswordOneNumber
                          ? const Color.fromARGB(255, 250, 212, 24)
                          : Colors.transparent,
                      border: _hasPasswordOneNumber
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Contains at least one number",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 30,
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: hasSpecialCharacters
                          ? const Color.fromARGB(255, 250, 212, 24)
                          : Colors.transparent,
                      border: hasSpecialCharacters
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Contains at least one Special character",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 300,
            height: 45,
            child: ElevatedButton(
              onPressed: _signup,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 250, 212, 24),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text(
                "Let's Go !",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
