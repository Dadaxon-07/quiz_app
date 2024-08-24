import '../Modal/quiz_date.dart';

class OnatiliRepository {
  static List<QuizData> onatest() {
    List<QuizData> data = [];

    //1
    data.add(QuizData(

        //1
        quzitext: "Til – dil ... Maqolni davom ettiring.",
        v1: "A. oynasi",
        v2: "B. ozig‘i",
        v3: "C. kaliti",
        v4: "D. qulfi",
        trueAnswer: "C"));
    //2
    data.add(QuizData(
        quzitext: "Ona tilim – jonimga ... Maqolni davom ettiring.",
        v1: "A. tabib",
        v2: "B. darmon",
        v3: "C. masih",
        v4: "D. orom",
        trueAnswer: "C"));
    //3
    data.add(QuizData(
        quzitext:
            "Har bir millat hayoti davomida aloqa-aralashuv vositasi sifatida asosan nechta tildan foydalanadi?",
        v1: "A. ikkita",
        v2: "B. bitta",
        v3: "C. bir nechta",
        v4: "D. uchta",
        trueAnswer: "B"));
    //4
    data.add(QuizData(
        quzitext:
            "Kollej, litsey, tadbirkor, fermer, tuman, viloyat. Ushbu so‘zlar qanday birlik?",
        v1: "A. arxaik birlik",
        v2: "B. atama",
        v3: "C. neologism",
        v4: "D. dialekt birlik",
        trueAnswer: "С"));
    //5
    data.add(QuizData(
        quzitext: "Qanday til o‘lik til deyiladi?",
        v1: "A. insonlar uchun tushunarsiz va ishlatilmaydigan til",
        v2: "B. hozirda muloqot vositasi bo‘lmagan til",
        v3: "C. yo‘qolib borayotgan va jamiyatda qo‘llanish doirasi cheklanayotgan til",
        v4: "D. jamiyatdan uzilgan, insonlarning o‘zaro til muloqotiga xizmat qilmaydigan til",
        trueAnswer: "В"));
    //6
    data.add(QuizData(
        quzitext: "Eronda qaysi tilda gaplashiladi?",
        v1: "A. arab",
        v2: "B. fors",
        v3: "C. ingliz",
        v4: "D. rus",
        trueAnswer: "B"));
    //7
    data.add(QuizData(
        quzitext: "Ona tilim – jonimga masih. «Masih» so‘zining ma’nosi nima?",
        v1: "A. tuzatguvchi",
        v2: "B. qisqa",
        v3: "C. baxt berguvchi",
        v4: "D. tiriltirguvchi",
        trueAnswer: "D"));
    //8
    data.add(QuizData(
        quzitext:
            "Qachondan boshlab o‘zbek tilining ijtimoiy vazifasi kengaydi?",
        v1: "A. mustaqillikka erishganimizdan so‘ng",
        v2: "B. barcha davlat hujjatlari o‘zbek tilida yuritilganidan so‘ng",
        v3: "C. o‘zbek tiliga davlat tili maqomi berilganidan so‘ng",
        v4: "D. kirill alifbosi tugatilganidan so‘ng",
        trueAnswer: "A"));
    //9
    data.add(QuizData(

        //1
        quzitext: "Chin so‘z mo‘tabar, Yaxshi so‘z... Maqolni davom ettiring",
        v1: "A. Muqaddas",
        v2: "B. mufattar",
        v3: "C. muxtasar",
        v4: "D. masih",
        trueAnswer: "C"));
    //10
    data.add(QuizData(

        //1
        quzitext: "Qachon o‘zbek tiliga davlat tili maqomi berilgan?",
        v1: "A.  1989-yil 21-oktyabrda",
        v2: "B.  1989-yil 1-oktyabrda",
        v3: "C.  1991-yil 31-avgustda",
        v4: "D.  1990-yil 8-dekabrda",
        trueAnswer: "A"));

    return data;
  }
}
