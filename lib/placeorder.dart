import 'package:flutter/material.dart';
import 'package:virtual_courier/promotion.dart';

class Placeorder extends StatefulWidget {
  const Placeorder({super.key});

  @override
  State<Placeorder> createState() => _PlaceorderState();
}

class _PlaceorderState extends State<Placeorder> {
  final timeController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    timeController.dispose();
    super.dispose();
  }

  final controller = TextEditingController();
  bool select = false;
  bool select2 = false;
  bool isTextFieldEnabled = false;
  bool isTextFieldEnabled2 = false;
  bool isNumberEnable = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    "Nduthi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(width: 30),
                ],
              ),
              Container(height: 30),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 30),
                  const SizedBox(
                    height: 25,
                    child: Text(
                      "What type of Nduthi do you want?",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Container(width: 30),
                  Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: const TextField(
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: null,
                        filled: true,
                        fillColor: Color.fromARGB(255, 238, 238, 238),
                        enabledBorder: OutlineInputBorder(
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
                    height: 25,
                    child: Text(
                      "Pick up time for your order",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Container(width: 30),
                    Container(
                        width: 300,
                        height: 50,
                        alignment: Alignment.bottomLeft,
                        child: TextField(
                          readOnly: true,
                          controller: timeController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: null,
                            filled: true,
                            fillColor: Color.fromARGB(255, 238, 238, 238),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            prefixIcon: IconButton(
                                onPressed: null, icon: Icon(Icons.access_time)),
                          ),
                          onTap: () async {
                            var time = await showTimePicker(
                                context: context, initialTime: TimeOfDay.now());

                            if (time != null) {
                              timeController.text = time.format(context);
                            }
                          },
                        ))
                  ]),
              Container(height: 20),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 25,
                    child: Text(
                      "Pickup Instructions at Westlands",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(width: 30),
                    Container(
                      width: 240,
                      height: 50,
                      alignment: Alignment.bottomLeft,
                      child: isTextFieldEnabled
                          ? const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: null,
                                filled: true,
                                fillColor: Color.fromARGB(255, 238, 238, 238),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                              ),
                            )
                          : Container(
                              width: 240,
                              height: 50,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 238, 238, 238),
                              ),
                              child: Text(
                                "   Add pickup instructions",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 250, 212, 24),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                    ),
                    Container(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 238, 238, 238),
                      ),
                      child: IconButton(
                        icon: Icon(
                          isTextFieldEnabled ? Icons.add : Icons.add,
                        ),
                        onPressed: () {
                          setState(() {
                            isTextFieldEnabled = !isTextFieldEnabled;
                          });
                        },
                      ),
                    ),
                  ]),
              Container(height: 20),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 25,
                    child: Text(
                      "Drop Off Instructions at Kikuyu",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(width: 30),
                    Container(
                      width: 240,
                      height: 50,
                      alignment: Alignment.bottomLeft,
                      child: isTextFieldEnabled2
                          ? const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: null,
                                filled: true,
                                fillColor: Color.fromARGB(255, 238, 238, 238),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                              ),
                            )
                          : Container(
                              width: 240,
                              height: 50,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 238, 238, 238),
                              ),
                              child: Text(
                                "   Add drop off instructions",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 250, 212, 24),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                    ),
                    Container(width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 238, 238, 238),
                      ),
                      child: IconButton(
                        icon: Icon(
                          isTextFieldEnabled2 ? Icons.add : Icons.add,
                        ),
                        onPressed: () {
                          setState(() {
                            isTextFieldEnabled2 = !isTextFieldEnabled2;
                          });
                        },
                      ),
                    ),
                  ]),
              Container(height: 20),
              Row(
                children: [
                  Container(width: 40),
                  const SizedBox(
                    height: 25,
                    child: Text(
                      "Do you have a preferred rider at your pick up location?",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Container(width: 30),
                  Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "   Select",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Expanded(child: Container()),
                        PopupMenuButton(
                            icon: Icon(Icons.keyboard_arrow_down_outlined),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem<int>(
                                  value: 0,
                                  child: Row(
                                    children: [
                                      select2
                                          ? Icon(
                                              Icons.check_box_outline_blank,
                                            )
                                          : Icon(
                                              Icons.check_box,
                                              color: Colors.yellow,
                                            ),
                                      Container(
                                        width: 5,
                                      ),
                                      Text("Yes"),
                                    ],
                                  ),
                                ),
                                PopupMenuItem<int>(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      select
                                          ? Icon(
                                              Icons.check_box_outline_blank,
                                            )
                                          : Icon(
                                              Icons.check_box,
                                              color: Colors.yellow,
                                            ),
                                      Container(
                                        width: 5,
                                      ),
                                      Text("No"),
                                    ],
                                  ),
                                ),
                              ];
                            },
                            onSelected: (value) {
                              if (value == 0) {
                                select = true;
                                select2 = false;
                                isNumberEnable = true;
                                setState(() {
                                  isNumberEnable = true;
                                });
                              } else if (value == 1) {
                                select2 = true;
                                select = false;
                                setState(() {
                                  isNumberEnable = false;
                                });
                              }
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              isNumberEnable
                  ? Row(
                      children: [
                        Container(width: 40),
                        const SizedBox(
                          height: 25,
                          child: Text(
                            "Enter the riders phone number to pair",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              isNumberEnable
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.bottomLeft,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: null,
                                filled: true,
                                fillColor: Color.fromARGB(255, 238, 238, 238),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                              ),
                            )),
                        Container(
                          width: 10,
                        ),
                        Container(
                            width: 240,
                            height: 50,
                            alignment: Alignment.bottomLeft,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: null,
                                filled: true,
                                fillColor: Color.fromARGB(255, 238, 238, 238),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                              ),
                            ))
                      ],
                    )
                  : Container(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Promo()),
                  );
                },
                child: Text(
                  "Apply a Discount",
                  style: TextStyle(
                    color: Color.fromARGB(255, 250, 212, 24),
                  ),
                ),
              ),
              Container(height: 30),
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
                        backgroundColor:
                            const Color.fromARGB(255, 250, 212, 24),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                      child: const Text(
                        "Place Order",
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
