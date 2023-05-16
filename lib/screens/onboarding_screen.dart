import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8D0000),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            SvgPicture.asset(
              'images/logo.svg',
            ),
            const SizedBox(
              height: 47,
            ),
            SvgPicture.asset('images/logo2.svg'),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Fast Delivery',
              style: GoogleFonts.raleway(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF8D0000),
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            Text(
              'Just one click and the food will reach you ',
              style: GoogleFonts.raleway(
                fontSize: 16,
                color: const Color(0xFF7B7B7B),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xFF8D0000),
                      maxRadius: 6,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF8D0000),
                      maxRadius: 6,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF8D0000),
                      maxRadius: 6,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
