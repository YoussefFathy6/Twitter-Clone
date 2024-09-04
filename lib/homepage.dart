import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sec_project/components/tweet.dart';
import 'package:sec_project/message%20page/message.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _MyAppState();
}

List tweetinfo = [
  {
    "nickname": " جو ",
    "email": " yousseffathyy ",
    "duration": " 2h ",
    "image": "images/hi.jpg",
    "comments": " 2 ",
    "retweet": " 1 ",
    "likes": " 11 ",
    "stats": " 121 "
  },
  {
    "nickname": " جى ",
    "email": " yousseffathyy ",
    "duration": " 2h ",
    "image": "images/hi.jpg",
    "comments": " 3 ",
    "retweet": " 2 ",
    "likes": " 15 ",
    "stats": " 111 "
  }
];
int index = 0;
List<Widget> pages = [
  ListView.builder(
    itemCount: tweetinfo.length,
    itemBuilder: (BuildContext context, int i) {
      return tweet(
        image: tweetinfo[i]['image'],
        nickname: tweetinfo[i]['nickname'],
        email: tweetinfo[i]['email'],
        duration: tweetinfo[i]['duration'],
        comment: tweetinfo[i]['comments'],
        retweet: tweetinfo[i]['retweet'],
        likes: tweetinfo[i]['likes'],
        stats: tweetinfo[i]['stats'],
      );
    },
  ),
  const Text("page 2"),
  const Text("page 3"),
  const Text("page 4"),
  messagepage(),
];
GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

class _MyAppState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          key: scaffoldkey,
          drawer: Drawer(
            backgroundColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                "images/hi.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.list_rounded))
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      alignment: AlignmentDirectional.topStart,
                      child: const Text(
                        "جو",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 20),
                      alignment: AlignmentDirectional.topStart,
                      child: const Text(
                        "@yousseffathyy",
                        style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                            fontSize: 15),
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "220 ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Following   ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                        Text(
                          "220 ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Followers ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 112, 112, 112),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      height: 500,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Profile",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.xTwitter,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Premium",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.bookmark_outlined,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Bookmark",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.tableList,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Lists",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.mic_none_rounded,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Spaces",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: MaterialButton(
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.moneyBill1,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Text(
                                      "Monetization",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        alignment: AlignmentDirectional.bottomStart,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.dark_mode_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ))
                  ]),
            ),
          ),
          floatingActionButton: index == 0
              ? FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70)),
                  backgroundColor: Colors.blue,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              : null,
          backgroundColor: Colors.black,
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              currentIndex: index,
              unselectedIconTheme: const IconThemeData(color: Colors.white),
              selectedIconTheme: const IconThemeData(
                  color: Color.fromARGB(255, 255, 255, 255)),
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Icon(Icons.home_filled),
                    label: " "),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: " "),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group_outlined), label: " "),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none), label: " "),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_post_office_outlined), label: " ")
              ]),
          appBar: index == 0
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
                  backgroundColor: Colors.black,
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("timeline");
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ))
                  ],
                  centerTitle: true,
                  title: IconButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushReplacementNamed("login");
                    },
                    icon: const Icon(
                      FontAwesomeIcons.xTwitter,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  bottom: index == 0
                      ? const TabBar(
                          dividerColor: Color.fromARGB(255, 63, 63, 63),
                          indicatorWeight: 5,
                          indicatorColor: Colors.blue,
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          unselectedLabelStyle: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                          tabs: [
                              Tab(
                                text: "For you",
                              ),
                              Tab(
                                text: "Following",
                              )
                            ])
                      : null,
                )
              : null,
          body: pages.elementAt(index)),
    ));
  }
}
