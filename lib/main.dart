import 'package:coding_challenge/features/profile/presentation/screens/profile_edit_screen.dart';
import 'package:coding_challenge/features/profile/presentation/screens/profile_screen.dart';
import 'package:coding_challenge/features/profile/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Screen",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Config.themeColor),
        useMaterial3: true,
      ),
      home: ProfileScreen
      (
        firstName: "Micah",
        lastName: "Doe",
        phone: "invalid",
        email: "n/a",
        bio: "blank"
      ),
      // home: ProfileEditScreen
      // (
      //   prompt: "What's your phone number?",
      //   label: "Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc."
      //   // label: "Your phone number",
      // )
    );
  }
}