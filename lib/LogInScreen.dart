import 'package:flutter/material.dart';

import 'Menyu.dart';
import 'cons/color.dart';

class Loginscreen extends StatefulWidget {
  static final String id = 'login_screen';
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(17),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              blue,
              darkBlue,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "image/baloon2.png",
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome to our",
                style: TextStyle(
                  color: lightgrey,
                  fontSize: 18,
                ),
              ),
               SizedBox(height: 3,),
               Row(
                 children: [
                   Text(
                       "Subject",
                       style: TextStyle(fontFamily: "Quiz", color: Colors.white, fontSize: 34,)
                   ),
                   SizedBox(width: 10,),
                   Text(
                       "Quiz",
                       style: TextStyle(fontFamily: "Quiz", color: Colors.orange, fontSize: 34)
                   ),
                 ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Do you feel confident? Here you'll face our most difficult questions!",
                style: TextStyle(
                  color: lightgrey,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Menyu(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    width: 100,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 48, 65, 183),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 151, 212, 253).withOpacity(.5),
                            blurRadius: 2.0, // soften the shadow
                            spreadRadius: 2.2, //extend the shadow
                            offset: Offset(
                              1.2, // Move to right 10  horizontally
                              0.2, // Move to bottom 10 Vertically
                            )),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
