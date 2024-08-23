import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Modal/quiz_date.dart';
import 'package:quiz_app/data/Biologiya_quiz_repository.dart';
import 'package:quiz_app/data/Inglish_quiz_repository.dart';
import 'package:quiz_app/data/Matematika_quiz_repository.dart';

import 'package:quiz_app/pages/quiz_page.dart';

import 'cons/color.dart';

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
      backgroundColor:   Color.fromARGB(255, 40, 32, 105),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 32, 105),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 40, 32, 105),
                Color.fromARGB(255, 40, 32, 105),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.quiz, color: Colors.orange),
              SizedBox(width: 8),
              Text(
                'QuizApp',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 70,
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children:[ Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                darkBlue,
                Color.fromARGB(255, 40, 32, 105),
              ],
            ),
          ),
          child: Column(children: [
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
                          QuizPage(quizList: matemm, quizName: "Matematika")),
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
          ]
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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              darkBlue,
              Color.fromARGB(255, 40, 32, 105),
            ],
          ),
          border: Border.all(
            color: Colors.blue,
          ),
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
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '10 Questions',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.orange,
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
                    color: Colors.white,
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
