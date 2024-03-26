import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro3 extends StatelessWidget {
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
              'assets/page3.png',
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
                  "Turn on your Zen Mode for focusing with our own pomodoro timer feature."),
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
