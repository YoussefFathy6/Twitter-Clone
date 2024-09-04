import 'package:flutter/material.dart';
import 'package:sec_project/homepage.dart';
import 'package:sec_project/message%20page/chatsettings.dart';
import 'package:sec_project/message%20page/customcard.dart';

class messagepage extends StatefulWidget {
  const messagepage({super.key});
  @override
  State<messagepage> createState() => _MyAppState();
}

List dminfo = [
  {
    "nickname": "جو",
    "email": " yousseffathyy ",
    "duration": " 2h ",
    "image": "images/hi.jpg",
    "message": "how R U and how is Ur life now?"
  },
];

class _MyAppState extends State<messagepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: index == 4
          ? AppBar(
              leading: MaterialButton(
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                child: Container(
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
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => chatsettings()));
                    },
                    icon: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ))
              ],
              title: Container(
                padding: EdgeInsets.only(left: 10),
                alignment: AlignmentDirectional.centerStart,
                width: 250,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 43, 43, 43),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  "Search Direct Messages",
                  style: TextStyle(
                      color: Color.fromARGB(255, 169, 169, 169), fontSize: 14),
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
            )
          : null,
      floatingActionButton: index == 4
          ? FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70)),
              backgroundColor: Colors.blue,
              onPressed: () {},
              child: const Icon(
                Icons.mark_email_read_outlined,
                color: Colors.white,
              ),
            )
          : null,
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: dminfo.length,
          itemBuilder: (BuildContext context, int i) {
            return customcard(
              image: dminfo[i]['image'],
              nickname: dminfo[i]['nickname'],
              email: dminfo[i]['email'],
              duration: dminfo[i]['duration'],
              message: dminfo[i]['message'],
            );
          },
        ),
      ),
    ));
  }
}
