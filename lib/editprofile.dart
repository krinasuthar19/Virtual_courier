import 'package:flutter/material.dart';
import 'package:virtual_courier/changelanguage.dart';
import 'package:virtual_courier/changepassword.dart';
import 'package:virtual_courier/login.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  bool _nameError = false;
  bool _emailError = false;
  bool _numberError = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  void _signup() {
    setState(() {
      _nameError = _nameController.text.isEmpty;
      _emailError = _emailController.text.isEmpty;
      _numberError = _numberController.text.isEmpty;
    });

    if (!_nameError && !_emailError && !_numberError) {
      // Perform signup logic here
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                    "Edit Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Expanded(child: SizedBox()),
                  PopupMenuButton(
                      // add icon, by default "3 dot" icon
                      // icon: Icon(Icons.book)
                      itemBuilder: (context) {
                    return [
                      const PopupMenuItem<int>(
                        value: 0,
                        child: Text("Edit Profile"),
                      ),
                      const PopupMenuItem<int>(
                        value: 1,
                        child: Text("Change Password"),
                      ),
                      const PopupMenuItem<int>(
                        value: 2,
                        child: Text("Change Language"),
                      ),
                      const PopupMenuItem<int>(
                        value: 3,
                        child: Text("Log Out"),
                      ),
                    ];
                  }, onSelected: (value) {
                    if (value == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfile()),
                      );
                    } else if (value == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangePassword()),
                      );
                    } else if (value == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeLanguage()),
                      );
                    }
                     else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()),
                      );
                    }
                  }),
                  Container(width: 30),
                ],
              ),
              Container(height: 30),
              SizedBox(height: 100, child: Image.asset("images/profile.png")),
              const Divider(
                color: Colors.black,
                height: 25,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              Container(height: 10),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 40,
                    child: Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 30),
                  Container(
                    width: 330,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: _emailController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 238, 238),
                        errorText:
                            _emailError ? 'Please enter your Name' : null,
                        enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 20),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 40,
                    child: Text(
                      "Email Address",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 30),
                  Container(
                    width: 330,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: _emailController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 238, 238),
                        errorText:
                            _emailError ? 'Please enter your Email' : null,
                        enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 20),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 40,
                    child: Text(
                      "Phone Number",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 30),
                  Container(
                    width: 330,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: _numberController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 238, 238),
                        errorText: _numberError
                            ? 'Please enter your Phone Number'
                            : null,
                        enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                ],
              ),
              Container(height: 100),
              Row(
                children: [
                  Container(width: 30),
                  SizedBox(
                    width: 330,
                    height: 50,
                  child: ElevatedButton(
                    onPressed: _signup,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 212, 24),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    child: const Text(
                      "Submit",
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
