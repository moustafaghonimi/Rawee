import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/Text_them.dart';
import 'package:rawee/Core/utils/app_assets.dart';

import 'smooth_page_indicator_onbording.dart';

class OnBordingBody extends StatelessWidget {
  OnBordingBody({super.key});

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.assetsImagesOnBording1),
              Text(
                'Explore the history world of Rawee',
                style: AppTextTheme.onBordingBodyTitelTextStyle25,
                textAlign: TextAlign.center,
              ),
              Text(
                'Explore the history world of Rawee',
                style: AppTextTheme.onBordingBodySubTitelTextStyle14,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              SmoothPageIndicatorOnBording(controller: controller),
            ],
          );
        },
      ),
    );
  }
}
