import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Modal/quiz_date.dart';
import 'package:quiz_app/data/Biologiya_quiz_repository.dart';
import 'package:quiz_app/data/Inglish_quiz_repository.dart';
import 'package:quiz_app/data/Matematika_quiz_repository.dart';

import 'package:quiz_app/pages/quiz_page.dart';

class Menyu extends StatefulWidget {
  static final String id = 'menyu';
  const Menyu({super.key});

  @override
  State<Menyu> createState() => _MenyuState();
}

class _MenyuState extends State<Menyu> {
  List<QuizData> biologyTest = BiologiyaQuizRepository.biologiyaTest();
  List<QuizData> matemm = MatematikaQuizRepository.matemtest();
  List<QuizData> english = InglishQuizRepository.englishtest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 53, 75, 221),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(33),
                  bottomRight: Radius.circular(33)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, left: 20),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 65, 92, 253),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        CupertinoIcons.rectangle_grid_2x2_fill,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 43),
                      child: Row(
                        children: [
                          Text(
                            "Quiz",
                            style: GoogleFonts.aclonica(
                                color: Colors.white, fontSize: 23),
                          ),
                          Text(
                            "App",
                            style: GoogleFonts.aclonica(
                                color: Colors.orange, fontSize: 23),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(top: 40, right: 30),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 65, 92, 253),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      QuizPage(quizList: biologyTest, quizName: "Biologiya"),
                ),
              );
            },
            child: subjectquiz(name: "Biologiya", img: "image/bilology.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      QuizPage(quizList: matemm, quizName: "Matematika")
                ),
              );
            },
            child: subjectquiz(name: "Matematika", img: "image/math.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      QuizPage(quizList: english, quizName: "English"),
                ),
              );
            },
            child: subjectquiz(name: "English tili", img: "image/english.png"),
          ),
          subjectquiz(name: "Ona tili", img: "image/onatili.png"),
          subjectquiz(name: "Biologiya", img: "image/bilology.png"),
        ]),
      ),
    );
  }

  Widget subjectquiz({img, name}) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              img, // Your HTML logo path
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '10 Questions',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: Center(
                child: Text(
                  '10',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
