import 'package:flutter/material.dart';
import 'package:sec_project/homepage.dart';

class chat extends StatefulWidget {
  const chat({super.key});
  @override
  State<chat> createState() => _MyAppState();
}

class _MyAppState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: MaterialButton(
          onPressed: () {
            scaffoldkey.currentState!.openDrawer();
          },
          child: SizedBox(
            width: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                "images/hi.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark_rounded))
        ],
      ),
      body: Column(children: [
        Expanded(
            child: ListView(
          children: [],
        )),
        TextField()
      ]),
    );
  }
}
