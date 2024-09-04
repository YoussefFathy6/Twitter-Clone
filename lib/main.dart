import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sec_project/homepage.dart';
import 'package:sec_project/login.dart';
import 'package:sec_project/message%20page/chat.dart';
import 'package:sec_project/message%20page/chatsettings.dart';
import 'package:sec_project/message%20page/message.dart';
import 'package:sec_project/signup.dart';
import 'package:sec_project/timline_settings.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});
  @override
  State<Myapp> createState() => _MyAppState();
}

class _MyAppState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirebaseAuth.instance.currentUser == null
            ? const login()
            : const homepage(),
        routes: {
          "login": (context) => const login(),
          "signup": (context) => const signup(),
          "homepage": (context) => const homepage(),
          "timeline": (context) => timeline_settings(),
          "message": (context) => const messagepage(),
          "chat": (context) => const chat(),
        });
  }
}

// ignore: must_be_immutable
