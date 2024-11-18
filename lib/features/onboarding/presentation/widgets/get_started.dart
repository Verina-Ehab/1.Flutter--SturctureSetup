import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/core/common_widgets/custom_text_button.dart';
import 'package:flutter_ecommerce_v1/core/constants/colors.dart';
import 'package:flutter_ecommerce_v1/core/helpers/extensions.dart';
import 'package:flutter_ecommerce_v1/core/helpers/shared_pref_manager.dart';
import 'package:flutter_ecommerce_v1/core/helpers/ui_helpers.dart';

import '../../../../core/routing/routes.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextButton(
            buttonText: "Get started",
            textStyle: Theme.of(context).textTheme.bodySmall,
            backgroundColor: ColorsManager.white,
            onPressed: () async {
              SharedPrefManager.setData("onboarding", true);
              context.pushReplacementNamed(Routes.loginScreen);
            }),
      ],
    );

    // TextButton(
    //     onPressed: () async {
    //       SharedPrefManager.setData("onboarding", true);
    //       context.pushReplacementNamed(Routes.loginScreen);
    //     },
    //     child: const Text(
    //       "Get started",
    //       style: TextStyle(color: Colors.white),
    //     ));
  }
}
