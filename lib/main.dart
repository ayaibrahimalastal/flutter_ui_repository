import 'package:flutter/material.dart';
import 'package:welcomepages/screens/forget_password_screen.dart';
import 'package:welcomepages/screens/signin_screen.dart';
import 'package:welcomepages/screens/signup_screen.dart';
import 'package:welcomepages/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        "SigninScreen": (context) => SigninScreen(),
        "SignupScreen": (context) => SignupScreen(),
        "ForgetPasswordScreen":(context)=>ForgetPasswordScreen()
      },
      title: 'Flutter Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WelcomeScreen(),
    );
  }
}
