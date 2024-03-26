import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Text(
              "Well-Being App",
              style: GoogleFonts.montserrat(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 97, 89, 230),
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/page4.png',
              height: 300,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  "Assess your mental health condition and access verified advice based on your score."),
            ),
            Spacer(),
            Spacer(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
