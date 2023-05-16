import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String time;
  const MyCard({
    super.key,
    required this.image,
    required this.time,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 420,
      margin: const EdgeInsets.only(top: 5, bottom: 5, right: 6, left: 7),
      child: Card(
        color: const Color(0xFFC29191),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              image,
              height: 95,
              width: 85,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 10,
            ),
            RichText(
              text: TextSpan(
                text: text1,
                style: GoogleFonts.raleway(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: text2,
                    style: GoogleFonts.raleway(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: time,
                    style: GoogleFonts.raleway(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(
                    0xFFD3D7E1,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Publish',
                  style: GoogleFonts.raleway(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
