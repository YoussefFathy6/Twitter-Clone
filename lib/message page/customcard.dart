import 'package:flutter/material.dart';
import 'package:sec_project/message%20page/chat.dart';

class customcard extends StatelessWidget {
  @override
  final String image;
  final String nickname;
  final String email;
  final String duration;
  final String message;

  const customcard(
      {super.key,
      required this.image,
      required this.nickname,
      required this.email,
      required this.duration,
      required this.message});
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => chat()));
      },
      child: Card(
        color: Colors.black,
        child: Row(children: [
          Container(
            height: 60,
            width: 60,
            child: InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("images/hi.jpg"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      nickname,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      email,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      duration,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
