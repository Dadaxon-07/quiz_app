import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'LogInScreen.dart';

class IntroPage extends StatefulWidget {
  static final String id = 'intro_page';
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              buildPage(
                color: Color.fromARGB(255, 45, 95, 255),
                image: 'image/book.png', // Replace with your asset
                title: "Test run",
                subtitle: "A set of different tests",
              ),
              buildPage(
                color: Color.fromARGB(255, 45, 95, 255),
                image: 'image/question.png', // Replace with your asset
                title: "Join the community",
                subtitle: "Compete with others, share your scores",
              ),
              buildPage(
                color: Color.fromARGB(255, 45, 95, 255),
                image: 'image/worried.png', // Replace with your asset
                title: "Check the leaderboard",
                subtitle: "See where you rank among others",
              ),
            ],
          ),
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loginscreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SwapEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey.shade300,
                    dotHeight: 10,
                    dotWidth: 10
                    ,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_controller.page!.toInt() == 2) {
                      // Finish action
                    }
                    else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), backgroundColor: Color(0xFF2B5BF5),
                    padding: EdgeInsets.all(14), // Button color
                    shadowColor: Color(0xFF00091F)
                  ),
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
  Widget buildPage({
    required Color color,
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 200), // Adjust image size as needed
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
