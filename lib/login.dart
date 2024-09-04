import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sec_project/signup.dart';

class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _MyAppState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class _MyAppState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        // ignore: prefer_const_literals_to_create_immutables
        child: ListView(children: [
          const Icon(
            FontAwesomeIcons.xTwitter,
            color: Colors.white,
            size: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Text(
                "Sign in to Twitter ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: MaterialButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.google,
                    color: Color.fromARGB(255, 199, 103, 103),
                  ),
                  Text(
                    "   Sign in with Google",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: MaterialButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                    ),
                    Text(
                      "   Sign in with Apple",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              "_______or_______ ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "username",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 20)),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Password",
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: MaterialButton(
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: username.text, password: password.text);
                      Navigator.of(context).pushReplacementNamed("homepage");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),
          ),
          Row(
            children: [
              const Text(
                "Don`t have account? ",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("signup");
                  },
                  child: const Text(
                    "Sign Up ",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ]),
      ),
    ));
  }
}
