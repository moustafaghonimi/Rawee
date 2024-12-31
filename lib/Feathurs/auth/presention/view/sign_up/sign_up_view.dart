import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/app_color.dart';
import 'package:rawee/Core/utils/app_strings.dart';
import 'package:rawee/Core/widgets/custme_btn.dart';
import 'package:rawee/Core/widgets/space.dart';
import 'package:rawee/Feathurs/auth/presention/widget/sign_up_bar_up.dart';
import 'package:rawee/Feathurs/auth/presention/widget/sign_up_form.dart';

import '../../widget/terms_and_privacy.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SignUPBarUp()),
            SliverToBoxAdapter(child: SignUpForm()),
            SliverToBoxAdapter(
                child:
                    Space(h: MediaQuery.of(context).size.height * 0.02, w: 0)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: CustmeBtn(btnName: AppStrings.signUp, onPressed: () {}),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: const TwoTextOFtextSpan(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signUp,
                  color1: AppColor.formColor,
                  color2: AppColor.appBarTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
