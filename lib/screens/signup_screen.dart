import 'package:flutter/material.dart';
import 'package:flutter_exam/widgets/text_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D0000),
        title: const Text('Sign Up'),
        centerTitle: true,
        leading: const Icon(
          Icons.add,
          color: Color(0xFF8D0000),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/logo.svg',
            ),
            const SizedBox(
              height: 32.9,
            ),
            const TextFieldAuth(
              pass: false,
              label: 'Name',
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFieldAuth(
              pass: false,
              label: 'Email',
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFieldAuth(
              pass: true,
              label: 'Password',
            ),
            const SizedBox(
              height: 15,
            ),
            const TextFieldAuth(
              pass: true,
              label: 'Confirm- Password',
            ),
            const SizedBox(
              height: 21,
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(325, 48),
                backgroundColor: const Color(0xFF8D0000),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home_screen');
              },
              child: Text(
                'Signup',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
