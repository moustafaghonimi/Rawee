import 'package:flutter/material.dart';

import '../../../../Core/routes/custem_navigation_router.dart';
import '../../../../Core/widgets/custme_btn.dart';
import '../../data/models/on_bording_model.dart';
import 'package:rawee/Core/utils/Text_them.dart';
import 'package:rawee/Core/utils/app_strings.dart';

class GetBtnOnBording extends StatelessWidget {
  const GetBtnOnBording({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBordingData.length - 1) {
      return Column(
        children: [
          CustmeBtn(
            btnName: AppStrings.loginNow,
            paddingSize: MediaQuery.of(context).size.width * 0.25,
            onPressed: () {
              custemNavigationRouterReplacement(context, 'SignUpView');
            },
          ),
          TextButton(
            onPressed: () {
              custemNavigationRouterReplacement(context, 'SignIn');
            },
            child: Text(
              AppStrings.signIn,
              style: AppTextTheme.textStyleWhite14.copyWith(
                fontSize: 20,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustmeBtn(
        btnName: AppStrings.next,
        paddingSize: MediaQuery.of(context).size.width * 0.25,
        onPressed: () {
          if (controller.page!.toInt() < onBordingData.length - 1) {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInCubic,
            );
          }
        },
      );
    }
  }
}