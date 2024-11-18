import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/core/constants/assets_pathes.dart';
import 'package:flutter_ecommerce_v1/core/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/helpers/ui_helpers.dart';
import '../data/onboarding_contents.dart';
import 'widgets/get_started.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorsManager.mainPurple,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: PageView.builder(
                      onPageChanged: (index) => setState(
                          () => isLastPage = items.length - 1 == index),
                      itemCount: items.length,
                      controller: pageController,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              items[index].image,
                            ),
                            const SizedBox(height: 15),
                            Text(
                              items[index].title,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            const SizedBox(height: 15),
                            Text(items[index].desc,
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(context).textTheme.displaySmall),
                          ],
                        );
                      }),
                ),
              ),
              Container(
                // color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: isLastPage
                    ? const GetStarted()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Skip Button
                          TextButton(
                              onPressed: () =>
                                  pageController.jumpToPage(items.length - 1),
                              child: Text(
                                "Skip",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )),

                          //Indicator
                          SmoothPageIndicator(
                            controller: pageController,
                            count: items.length,
                            onDotClicked: (index) =>
                                pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 600),
                                    curve: Curves.easeIn),
                            effect: const WormEffect(
                              dotHeight: 12,
                              dotWidth: 12,
                              activeDotColor: ColorsManager.white,
                            ),
                          ),

                          //Next Button
                          TextButton(
                              onPressed: () => pageController.nextPage(
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.easeIn),
                              child: Text(
                                "Next",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              )),
                        ],
                      ),
              ),
              verticalSpacing(),
            ],
          ),
        ),
      ),
    );
  }
}
