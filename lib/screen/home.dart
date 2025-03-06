import 'package:app/components/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        background: [
          Image.asset('assets/logo.png', height: 300),
          Image.asset('assets/logo.png', height: 300),
          Image.asset('assets/logo.png', height: 300),
        ],
        pageBodies: [
          PageSlide(
            description: description,
            title: "Let's meet our summer coffee drinks",
          ),
          PageSlide(
            description: description,
            title: "Let's meet our summer coffee drinks",
          ),
          PageSlide(
            description: description,
            title: "Let's meet our summer coffee drinks",
          ),
        ],
        speed: 1.0,
        onFinish: () {
          context.go('/detail');
        },
        controllerColor: Colors.green,
        finishButtonText: "Get Started",
        finishButtonStyle: FinishButtonStyle(backgroundColor: Colors.green),
      ),
    );
  }
}
