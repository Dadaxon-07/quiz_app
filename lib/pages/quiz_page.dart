import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/pages/result_page.dart';

import 'package:quiz_app/widgets/variant_item.dart';

import '../Modal/quiz_date.dart';

class QuizPage extends StatefulWidget {
  final List<QuizData> quizList;
  final String quizName;
  const QuizPage({
    super.key, required this.quizList, required this.quizName,

  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int expendedvalue = 1;
  final CountDownController _controller = CountDownController();
  final int duration = 10;
  int currentQuestionIndex = 0;
  String selectedVariant = "";
  List<bool> choseAnswers = [];
  int trueQuestionCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 173, 232, 230),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.blueAccent],
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
              Icon(Icons.quiz, color: Colors.white),
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/bilo.png"), fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(26)),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 3, 160, 166),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                            offset: Offset(1, 4),
                                            color: Colors.white54)
                                      ],
                                      borderRadius: BorderRadius.circular(26)),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                              color: Colors.orange),
                                        ),
                                        flex: expendedvalue,
                                      ),
                                      Expanded(
                                        flex: widget.quizList.length -
                                            expendedvalue,
                                        child: SizedBox(),
                                      )
                                    ],
                                  ),
                                )),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "$expendedvalue/${widget.quizList.length}",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          flex: 5,
                        ),
                        Expanded(
                          child: CircularCountDownTimer(
                            duration: duration,
                            controller: _controller,
                            width: 50,
                            height: 50,
                            fillColor: Color.fromARGB(255, 253, 151, 0),
                            ringColor: Colors.cyanAccent,
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                            autoStart: true,
                            isReverse: true,
                            strokeWidth: 6,
                            onComplete: () {
                              if (currentQuestionIndex < 9) {
                                setState(() {
                                  choseAnswers.add(false);
                                  expendedvalue++;
                                  currentQuestionIndex++;
                                  selectedVariant = "";
                                });
                                _controller.restart();
                              }
                            },
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Question: $expendedvalue",
                    style: GoogleFonts.aclonica(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blue),
                  ),
                  SizedBox(
                      height: 10,
                  ),
                  Text(
                    widget.quizList[currentQuestionIndex].quzitext,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 222, 25, 16),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  VariantItem(
                      isSelect: selectedVariant == "A",
                      onTap: () {
                        setState(() {
                          selectedVariant = "A";
                        });
                      },
                      variant: widget.quizList[currentQuestionIndex].v1),
                  SizedBox(
                    height: 20,
                  ),
                  VariantItem(
                      isSelect: selectedVariant == "B",
                      onTap: () {
                        setState(() {
                          selectedVariant = "B";
                        });
                      },
                      variant: widget.quizList[currentQuestionIndex].v2),
                  SizedBox(
                    height: 20,
                  ),
                  VariantItem(
                      isSelect: selectedVariant == "C",
                      onTap: () {
                        setState(() {
                          selectedVariant = "C";
                        });
                      },
                      variant: widget.quizList[currentQuestionIndex].v3),
                  SizedBox(
                    height: 20,
                  ),
                  VariantItem(
                      isSelect: selectedVariant == "D",
                      onTap: () {
                        setState(() {
                          selectedVariant = "D";
                        });
                      },
                      variant: widget.quizList[currentQuestionIndex].v4),
                  SizedBox(
                    height: 29,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          _controller.restart();
                          setState(() {
                            if (selectedVariant != "") {
                              if (currentQuestionIndex + 1 <
                                  widget.quizList.length) {
                                if (selectedVariant ==
                                    widget.quizList[currentQuestionIndex]
                                        .trueAnswer) {
                                  choseAnswers.add(true);
                                  trueQuestionCount += 1;
                                } else {
                                  choseAnswers.add(false);
                                }
                                currentQuestionIndex++;
                                expendedvalue++;
                                selectedVariant = "";
                              } else if (currentQuestionIndex + 1 ==
                                  widget.quizList.length) {
                                if (selectedVariant ==
                                    widget.quizList[currentQuestionIndex]
                                        .trueAnswer) {
                                  choseAnswers.add(true);
                                  trueQuestionCount += 1;
                                } else {
                                  choseAnswers.add(false);
                                }
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                  return ResultPage(
                                      totalQuestionCount:
                                          widget.quizList.length,
                                      trueQuestionCount: trueQuestionCount,
                                      answer: choseAnswers,
                                      pracent: trueQuestionCount /
                                          widget.quizList.length *
                                          100);
                                }));
                              }
                            }
                          });
                        },
                        child: Container(
                          height: 55,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 117, 216, 214),
                              borderRadius: BorderRadius.circular(18)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              Text(
                                "Next",
                                style: GoogleFonts.akatab(
                                    fontSize: 19,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.navigate_next_outlined,
                                size: 34,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
