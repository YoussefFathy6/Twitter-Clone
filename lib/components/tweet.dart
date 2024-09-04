import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tweet extends StatelessWidget {
  final String image;
  final String nickname;
  final String email;
  final String duration;
  final String comment;
  final String retweet;
  final String likes;
  final String stats;

  const tweet(
      {super.key,
      required this.image,
      required this.nickname,
      required this.email,
      required this.duration,
      required this.comment,
      required this.retweet,
      required this.likes,
      required this.stats});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border.symmetric(
              vertical: BorderSide.none,
              horizontal: BorderSide(
                  color: Color.fromARGB(255, 99, 99, 99), width: .7))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    nickname,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 135, 134, 134),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  duration,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 135, 134, 134),
                      fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.grey,
                )
              ])
            ],
          ),
          Container(
              padding: const EdgeInsets.all(10),
              alignment: AlignmentDirectional.topStart,
              child: Image.asset(image)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    comment,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.retweet,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    retweet,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    likes,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bar_chart_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    stats,
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.grey,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
