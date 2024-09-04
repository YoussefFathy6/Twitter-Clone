import 'package:flutter/material.dart';

class timeline_settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            "Timeline Settings",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nothing here yet",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              Text(
                "Try pinning a List or a Community ",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              )
            ]),
      ),
    );
  }
}
