import 'package:flutter/material.dart';
import 'package:virtual_courier/changelanguage.dart';
import 'package:virtual_courier/changepassword.dart';
import 'package:virtual_courier/editprofile.dart';
import 'package:virtual_courier/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                    "Profile",
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
                  Container(width: 40),
                  const SizedBox(
                    height: 40,
                    child: Text(
                      "Edward Mwongera",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                height: 10,
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
                      "Email Address",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 40,
                    child: Text(
                      "mwongeraedward@gmail.com",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                height: 10,
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
                      "Phone Number",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 40,
                    child: Text(
                      "0702 4567 45867",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
                height: 10,
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
