import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/app_strings.dart';
import 'package:rawee/Feathurs/onBording/presentaion/view/on_bording_body.dart';
import 'package:rawee/Feathurs/onBording/presentaion/view/skip_btn.dart';

import '../../../../Core/widgets/custme_btn.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SkipBtn(),
            ),
            OnBordingBody(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustmeBtn(
                btnName: AppStrings.next,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
