import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/core/constants/colors.dart';

import '../../../core/constants/assets_pathes.dart';

class OnboardingItem {
  final String title;
  final String image;
  final String desc;
  final Color? color;

  OnboardingItem({
    required this.title,
    required this.image,
    required this.desc,
    this.color,
  });
}

List<OnboardingItem> items = [
  OnboardingItem(
      title: "Find All You Need",
      image: allYouNeed,
      desc:
          "Find the best deals on the items you want to buy.\n Find the best deals.\nFind the best deals on the items you want.",
      color: ColorsManager.mainPurple),
  OnboardingItem(
      title: "Find All You Need",
      image: allYouNeed,
      desc:
          "Find the best deals on the items you want to buy.\n Find the best deals.\nFind the best deals on the items you want.",
      color: ColorsManager.mainPurple),
  OnboardingItem(
      title: "Get Started!",
      image: getStarted,
      desc:
          "Pay for the products you want to buy safely and easily.\n Pay for the products safely and easily.\nPay for the products.",
      color: ColorsManager.mainPurple),
  OnboardingItem(
      title: "Get Started!",
      image: getStarted,
      desc: "Pay for the products you want to buy safely and easily",
      color: ColorsManager.mainPurple),
];
