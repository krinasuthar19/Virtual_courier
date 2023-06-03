import "package:flutter/material.dart";
import "package:virtual_courier/changelanguage.dart";
import "package:virtual_courier/editprofile.dart";
import "package:virtual_courier/login.dart";

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _oldController = TextEditingController();
  final TextEditingController _newController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  bool _oldError = false;
  bool _newError = false;
  bool _confirmError = false;

  @override
  void dispose() {
    _oldController.dispose();
    _newController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  void _signup() {
    setState(() {
      _oldError = _oldController.text.isEmpty;
      _newError = _newController.text.isEmpty;
      _confirmError = _confirmController.text.isEmpty;
    });

    if (!_oldError && !_newError && !_confirmError) {
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
                    "Change Password",
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
                    }else if (value == 1) {
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
                      "Old Password",
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
                    width: 300,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: _oldController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 238, 238),
                        errorText:
                            _oldError ? 'Please enter your Old Password' : null,
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
                      "New Password",
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
                    width: 300,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: _newController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 238, 238),
                        errorText:
                            _newError ? 'Please enter your New Password' : null,
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
                      "Confirm Password",
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
                    width: 300,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: _confirmController,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: const Color.fromARGB(255, 238, 238, 238),
                        errorText: _confirmError
                            ? 'Please Confirm Password'
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
                    width: 300,
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
                      "Change Password",
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