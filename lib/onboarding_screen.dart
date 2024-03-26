import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:well/home_page.dart';
import 'package:well/intro/intro1.dart';
import 'package:well/intro/intro2.dart';
import 'package:well/intro/intro3.dart';
import 'package:well/intro/intro4.dart';
import 'package:well/intro/intro5.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 4);
            });
          },
          children: [
            Intro1(),
            Intro2(),
            Intro3(),
            Intro4(),
            Intro5(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(4);
                    },
                    child: Text(
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Color.fromARGB(255, 97, 89, 230),
                          fontWeight: FontWeight.bold,
                        ),
                        'Skip')),
                SmoothPageIndicator(controller: _controller, count: 5),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Text(
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color.fromARGB(255, 97, 89, 230),
                              fontWeight: FontWeight.bold,
                            ),
                            'Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Color.fromARGB(255, 97, 89, 230),
                              fontWeight: FontWeight.bold,
                            ),
                            'Next')),
              ],
            ))
      ],
    ));
  }
}
