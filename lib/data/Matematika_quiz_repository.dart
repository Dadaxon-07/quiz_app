import '../Modal/quiz_date.dart';

class MatematikaQuizRepository {
  static List<QuizData> matemtest() {
    List<QuizData> data = [];

    //1
    data.add(QuizData(

      //1
        quzitext: "√64 = ?",
        v1: "A. 13",
        v2: "B. 16",
        v3: "C. 8",
        v4: "D. 6",
        trueAnswer: "C"));
    //2
    data.add(QuizData(

        quzitext: "100 ÷ 4 = ?",
        v1: "A. 25",
        v2: "B. 23",
        v3: "C. 14",
        v4: "D. 12",
        trueAnswer: "A"));
    //3
    data.add(QuizData(

        quzitext: "36 ÷ 6 = ?",
        v1: "A. 16",
        v2: "B. 30",
        v3: "C. 42",
        v4: "D. 6",
        trueAnswer: "D"));
    //4
    data.add(QuizData(
        quzitext: "72 + 48 = ?",
        v1: "A. 120",
        v2: "B. 121",
        v3: "C. 123",
        v4: "D. 100",
        trueAnswer: "A"));
    //5
    data.add(QuizData(
        quzitext: "1000 − 275 = ?",
        v1: "A. 10800",
        v2: "B. 725",
        v3: "C. 1080",
        v4: "D. 725",
        trueAnswer: "B"));
    //6
    data.add(QuizData(
        quzitext: "50 × 6 = ?",
        v1: "A. 300",
        v2: "B. 230",
        v3: "C. 340",
        v4: "D. 300",
        trueAnswer: "A"));
    //7
    data.add(QuizData(

        quzitext: "100 × 10 = ??",
        v1: "A. 10",
        v2: "B. 100",
        v3: "C. 1",
        v4: "D. 10",
        trueAnswer: "B"));
    //8
    data.add(QuizData(

        quzitext: "5 × 9 = ?",
        v1: "A. 55",
        v2: "B. 35",
        v3: "C. 54",
        v4: "D. 45",
        trueAnswer: "D"));
    //9
    data.add(QuizData(

      //1
        quzitext: "3³ = ?",
        v1: "A. 27",
        v2: "B. 9",
        v3: "C. 6",
        v4: "D. 0",
        trueAnswer: "A"));
    //10
    data.add(QuizData(

      //1
        quzitext: "64 ÷ 8 = ?",
        v1: "A. 8",
        v2: "B. 16",
        v3: "C. 11",
        v4: "D. 23",
        trueAnswer: "A"));

    return data;
  }
}
