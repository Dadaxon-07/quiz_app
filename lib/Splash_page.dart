import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Intro_page.dart';
class SplashPage extends StatefulWidget {
  static final String id = 'splash_page';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, IntroPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 65, 92, 253),
      body: Container(
        child: Center(
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quiz",
                style: GoogleFonts.aclonica(
                    color: Colors.white, fontSize: 40),
              ),
              Text(
                "App",
                style: GoogleFonts.aclonica(
                    color: Colors.orange, fontSize: 40),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
