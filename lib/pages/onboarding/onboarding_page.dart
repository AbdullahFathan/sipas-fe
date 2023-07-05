import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/onboarding/constan_data.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(context, loginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        onboardingData[index]['image'],
                        height: 300,
                        width: 280,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingData[index]['title'],
                        style: heading1(
                          colorFont: violetColor,
                          sizeFont: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        onboardingData[index]['subtitle'],
                        style: bodyMedium(
                          colorFont: lightVioletColor,
                          sizeFont: 14,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingData.length,
                (index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: 50,
                  height: 10,
                  decoration: _currentPage != index
                      ? const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _nextPage,
              style: ElevatedButton.styleFrom(
                  backgroundColor: orangeColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
              child: Text(
                _currentPage < 2 ? 'Selanjutnya' : 'Mulai Sekarang',
                style: headline(
                  colorFont: Colors.white,
                  sizeFont: 14,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

/*
OrangeButton(
              contentText: title,
              minimumSize: 
              maximumSize: 
              onPressedFunc: _nextPage,
            ),
 */