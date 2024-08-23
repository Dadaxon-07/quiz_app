import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/Menyu.dart';


class ResultPage extends StatefulWidget {
  final int totalQuestionCount;
  final int trueQuestionCount;
  final List<bool> answer;
  final double pracent;

  const ResultPage(
      {super.key,
      required this.totalQuestionCount,
      required this.trueQuestionCount,
      required this.answer,
      required this.pracent});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String lottie = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.pracent > 80) {
      lottie = "image/lottie/winner.json";
    } else if (widget.pracent >= 60 && widget.pracent < 80) {
      lottie = "image/lottie/good.json";
    } else {
      lottie = "image/lottie/bad.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 33, 61),
        title: Row(
          children: [
            Text(
              "Quiz",
              style: GoogleFonts.aclonica(color: Colors.white60, fontSize: 23),
            ),
            Text(
              "App",
              style:
                  GoogleFonts.aclonica(color: Colors.orange[300], fontSize: 23),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 40, 32, 105),
              Color.fromARGB(255, 47, 38, 121),
            ],
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
                child: Lottie.asset(lottie,
                    height: 320, width: 320, fit: BoxFit.cover)),
            SizedBox(
              height: 30,
            ),
            Text(
              "Congratulations !",
              style: GoogleFonts.afacad(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "You Score : ${widget.pracent}",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menyu()),
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white38),    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],),
                    child: Center(
                      child: Icon(CupertinoIcons.xmark),
                    ),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
