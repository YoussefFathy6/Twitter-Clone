import 'package:flutter/material.dart';

String? rad1;
bool swch1 = false;
bool swch2 = false;
bool swch3 = false;
bool chk1 = false;
bool chk2 = false;
bool chk3 = false;

// ignore: camel_case_types
class chatsettings extends StatefulWidget {
  const chatsettings({super.key});
  @override
  State<chatsettings> createState() => _MyAppState();
}

class _MyAppState extends State<chatsettings> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Messages settings",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    vertical: BorderSide.none,
                    horizontal: BorderSide(
                        color: Color.fromARGB(255, 99, 99, 99), width: .7))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Allow message requests from :",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "people you follow will always be able to message You",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "No one",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Radio(
                      activeColor: Colors.blue,
                      value: "No one",
                      groupValue: rad1,
                      onChanged: (val) {
                        setState(() {
                          rad1 = val;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Verified users",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Radio(
                      activeColor: Colors.blue,
                      value: "Verified users",
                      groupValue: rad1,
                      onChanged: (val) {
                        setState(() {
                          rad1 = val;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Everyone",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Radio(
                      activeColor: Colors.blue,
                      value: "Everyone",
                      groupValue: rad1,
                      onChanged: (val) {
                        setState(() {
                          rad1 = val;
                        });
                      }),
                ],
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    vertical: BorderSide.none,
                    horizontal: BorderSide(
                        color: Color.fromARGB(255, 99, 99, 99), width: .7))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Enable audio and video calling",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 291,
                    child: Text(
                      "take messaging to the next level with audio and video calls. When enabled you can select who you are comfortable using it with",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Switch(
                      activeColor: Colors.blue,
                      value: swch1,
                      onChanged: (val) {
                        setState(() {
                          swch1 = val;
                        });
                      }),
                ],
              ),
              swch1 == true
                  ? Container(
                      child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "People in your address book",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Checkbox(
                                activeColor: Colors.blue,
                                value: chk1,
                                onChanged: (val) {
                                  setState(() {
                                    chk1 = val!;
                                  });
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "People you follow",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Checkbox(
                                activeColor: Colors.blue,
                                value: chk2,
                                onChanged: (val) {
                                  setState(() {
                                    chk2 = val!;
                                  });
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Verified users",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Checkbox(
                                activeColor: Colors.blue,
                                value: chk3,
                                onChanged: (val) {
                                  setState(() {
                                    chk3 = val!;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ))
                  : Text(" "),
            ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    vertical: BorderSide.none,
                    horizontal: BorderSide(
                        color: Color.fromARGB(255, 99, 99, 99), width: .7))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Filter low-quality messages",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 291,
                    child: Text(
                      "Hide messages requests that have been detected as being spam or low-quality",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Switch(
                      activeColor: Colors.blue,
                      value: swch2,
                      onChanged: (val) {
                        setState(() {
                          swch2 = val;
                        });
                      }),
                ],
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    vertical: BorderSide.none,
                    horizontal: BorderSide(
                        color: Color.fromARGB(255, 99, 99, 99), width: .7))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Send read receipts",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 291,
                    child: Text(
                      "Hide messages requests that have been detected as being spam or low-quality",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Switch(
                      activeColor: Colors.blue,
                      value: swch3,
                      onChanged: (val) {
                        setState(() {
                          swch3 = val;
                        });
                      }),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
