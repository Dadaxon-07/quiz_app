
import '../Modal/quiz_date.dart';

class BiologiyaQuizRepository {
  static List<QuizData> biologiyaTest() {
    List<QuizData> data = [];
    //1
    data.add(QuizData(

        //1
        quzitext: "Eng kichik qush qaysi ?",
        v1: "A. Kabutar",
        v2: "B. Musicha",
        v3: "C. Tuyaqush",
        v4: "D. kolibri",
        trueAnswer: "D"));
    //2
    data.add(QuizData(
        quzitext: "Asalarilarning nechta oyogʻi bor ?",
        v1: "A. 6 ta ",
        v2: "B. 2 ta ",
        v3: "C. 8 ta ",
        v4: "D. 4 ta ",
        trueAnswer: "A"));
    //3
    data.add(QuizData(
        quzitext: "Tezligi soatiga 104 km ni tashkil qiluvchi hayvon qaysi ?",
        v1: "A. Mo'g'ul jayroni",
        v2: "B. Gepard",
        v3: "C. Kiyik",
        v4: "D. Anitolopa",
        trueAnswer: "C"));
    //4
    data.add(QuizData(
        quzitext: "Inson nafas oladigan havoning necha foizi azotdan iborat?",
        v1: "A. 89 %",
        v2: "B. 78 %",
        v3: "C. 88 %",
        v4: "D. 79 %",
        trueAnswer: "B"));
    //5
    data.add(QuizData(
        quzitext: "Insonning tana harorati oʻrtacha necha °C boʻladi ?",
        v1: "A. 36.7 °",
        v2: "B. 37.5 °",
        v3: "C. 39,6 °",
        v4: "D. 36.6 °",
        trueAnswer: "D"));
    //6
    data.add(QuizData(
        quzitext: "Buqalar jangi eng mashhur boʻlgan davlat qaysi?",
        v1: "A. Ispaniya",
        v2: "B. Italiya",
        v3: "C. Brazilya",
        v4: "D. Argentina",
        trueAnswer: "A"));
    //7
    data.add(QuizData(
        quzitext: "Odamlar kabi rang ajrata oladigan hayvonni belgilang",
        v1: "A. Maymun",
        v2: "B. It",
        v3: "C. BUqa",
        v4: "D. Mushuk",
        trueAnswer: "A"));
    //8
    data.add(QuizData(
        quzitext:
            "Okean ustidan qoʻnishsiz uchib oʻta oladigan qush turini toping.",
        v1: "A. Arktika krachkasi",
        v2: "B. Tillarang Amerika loyho'ragi",
        v3: "C. Tillarang lochin",
        v4: "D. Kapistrano qaldirg'ochi",
        trueAnswer: "B"));
    //9
    data.add(QuizData(
        quzitext: "Qaysi javobda daho ixtisoslashmaydigan soha koʻrsatilgan ?",
        v1: "A. Sport",
        v2: "B. Adabiyot",
        v3: "C. Kimyo",
        v4: "D. San'at",
        trueAnswer: "A"));
    //10
    data.add(QuizData(
        quzitext:
            ". Inson terisining oʻzi hech qanday moddasiz qanday rangda boʻladi ?",
        v1: "A. Oq",
        v2: "B. Sariq",
        v3: "C. Jigarrang",
        v4: "D. Sutrang",
        trueAnswer: "D"));

    return data;
  }
}
