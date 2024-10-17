import 'package:flutter/material.dart';
import 'login_page.dart'; // Importação da LoginPage

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;


  final List<Map<String, dynamic>> onboardingData = [
    {
      'imageBackGround': 'lib/assets/images/04.png',
      'title': 'Welcome to',
      'imagePath': 'lib/assets/logos/fitbody.png',
      'imagePath2': 'lib/assets/logos/Group.png',
      'buttonText': 'Next',
    },
    {
      'imageBackGround': 'lib/assets/images/03.png',
      'imagePath2': 'null',
      'backgroundColor': const Color(0xFFB3A0FF),
      'textColor': Colors.white,
      'title': 'Start Your Journey Towards A More Active Lifestyle',
      'imagePath': 'lib/assets/logos/Community.png',
      'buttonText': 'Next',
    },
    {
      'imageBackGround': 'lib/assets/images/02.png',
      'backgroundColor': const Color(0xFFB3A0FF),
      'textColor': Colors.white,
      'title': 'Find Nutrition Tips That Fit Your Lifestyle',
      'imagePath': 'lib/assets/logos/Nutrition.png',
      'imagePath2': 'null',
      'buttonText': 'Next',
    },
    {
      'imageBackGround': 'lib/assets/images/01.png',
      'backgroundColor': const Color(0xFFB3A0FF),
      'textColor': Colors.white,
      'title': 'A Community For You, Challenge Yourself',
      'imagePath': 'lib/assets/logos/Work Out.png',
      'imagePath2': 'null',
      'buttonText': 'Get Started',
    },
  ];

  void _nextPage() {
    if (_currentIndex == onboardingData.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } else {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentPageData = onboardingData[_currentIndex];

    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              currentPageData['imageBackGround']!,
              fit: BoxFit.cover,
            ),
          ),

          //containerr main
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               //container roxo
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: currentPageData['backgroundColor'] ?? Colors.transparent,
                  ),
                  child: Column(
                    children: [
                      // Segunda imagem,
                      if (currentPageData['imagePath2'] != 'null')
                        Image.asset(
                          currentPageData['imagePath2']!,
                          height: 100,
                        ),
                      const SizedBox(height: 10),
                      // Primeira imagem
                      Image.asset(
                        currentPageData['imagePath']!,
                        height: 150,
                      ),
                      const SizedBox(height: 20),

                      Text(
                        currentPageData['title']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: currentPageData['textColor'] ?? Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(currentPageData['buttonText']!),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
