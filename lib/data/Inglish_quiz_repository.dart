import '../Modal/quiz_date.dart';

class InglishQuizRepository {
  static List<QuizData> englishtest() {
    List<QuizData> data = [];

    //1
    data.add(QuizData(

        quzitext: "She ___ to the store every day.",
        v1: "A. goes",
        v2: "B. go",
        v3: "C. went",
        v4: "D. is",
        trueAnswer: "C"));
    //2
    data.add(QuizData(

        quzitext: "I am interested ___ learning English.",
        v1: "A. __",
        v2: "B. in",
        v3: "C. the",
        v4: "D. is",
        trueAnswer: "B"));
    //3
    data.add(QuizData(

        quzitext: "They ___ already finished their homework.",
        v1: "A. have",
        v2: "B. his",
        v3: "C. has",
        v4: "D. had",
        trueAnswer: "A"));
    //4
    data.add(QuizData(

        quzitext: "What is the synonym of the word 'happy'?",
        v1: "A. Joyful",
        v2: "B. Joyfully",
        v3: "C. went",
        v4: "D. Jonyful",
        trueAnswer: "A"));
    //5
    data.add(QuizData(

        quzitext: "This book is ___ than that one.",
        v1: "A. interesting",
        v2: "B. most interested",
        v3: "C. the most interested",
        v4: "D. more interesting",
        trueAnswer: "D"));
    //6
    data.add(QuizData(

        quzitext: "How ___ do you go to the gym?",
        v1: "A. every day",
        v2: "B. often",
        v3: "C. every night",
        v4: "D. yesterday",
        trueAnswer: "B"));
    //7
    data.add(QuizData(

        quzitext: "I saw ___ elephant at the zoo.",
        v1: "A. an",
        v2: "B. is",
        v3: "C. no",
        v4: "D. am",
        trueAnswer: "A"));
    //8
    data.add(QuizData(

        quzitext: "I ___ my homework last night.",
        v1: "A. did",
        v2: "B. don't",
        v3: "C. does",
        v4: "D. do",
        trueAnswer: "A"));
    //9
    data.add(QuizData(

        quzitext: "Home so'zining tarjimasi ?",
        v1: "A. Uy",
        v2: "B. Ot",
        v3: "C. Xone",
        v4: "D. Sinfxona",
        trueAnswer: "A"));
    //10
    data.add(QuizData(

        quzitext: "Past simple ni formulasini toping ?",
        v1: "A. S + V(ed)",
        v2: "B. S + V2(ed)",
        v3: "C. S + V2",
        v4: "D. S + V(ing)",
        trueAnswer: "A"));

    return data;
  }
}
