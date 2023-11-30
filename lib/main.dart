import 'package:coding_challenge/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:coding_challenge/features/profile/presentation/screens/profile_screen.dart';
import 'package:coding_challenge/features/profile/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>
    (
      create: (context) => ProfileBloc(),
      child: MaterialApp
      (
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
      ),
    );
  }
}