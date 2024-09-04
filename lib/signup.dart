import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class signup extends StatefulWidget {
  const signup({super.key});
  @override
  State<signup> createState() => _MyAppState();
}

TextEditingController username = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _MyAppState extends State<signup> {
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
                "Sign up to Twitter ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "email",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 20)),
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
                          const TextStyle(color: Colors.grey, fontSize: 20)),
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
                          .createUserWithEmailAndPassword(
                        email: email.text,
                        password: password.text,
                      );
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pushReplacementNamed("login");
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )),
            ),
          ),
          Row(
            children: [
              const Text(
                "Already have account? ",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("login");
                  },
                  child: const Text(
                    "Sign in ",
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
