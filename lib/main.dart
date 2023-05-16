import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/home_screen.dart';
import 'package:flutter_exam/screens/onboarding_screen.dart';
import 'package:flutter_exam/screens/signup_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_screen',
      routes: {
        '/': (context) => const OnBoardingScreen(),
        '/sign_up': (context) => const SignupScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}
