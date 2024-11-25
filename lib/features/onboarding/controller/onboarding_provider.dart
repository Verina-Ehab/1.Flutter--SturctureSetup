import 'package:flutter/material.dart';

import '../data/onboarding_contents.dart';

class OnboardingProvider extends ChangeNotifier {
  final pageController = PageController();
  bool isLastPage = false;

  // void updatePageIndicator(index) {}
  void onDotClicked(index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
  }

  void skipPage() {
    pageController.jumpToPage(items.length - 1);
  }
}
