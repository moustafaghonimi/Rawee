import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/app_color.dart';
import 'package:rawee/Core/utils/app_strings.dart';
import 'package:rawee/Feathurs/auth/presention/widget/custem_text_form_filed.dart';
import 'package:rawee/Feathurs/auth/presention/widget/terms_and_privacy.dart';

import 'custem_check_box.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.formColor,
            offset: const Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        color: AppColor.formColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          CustemTextFormFiled(hintText: 'Firest Name', icon: Icons.person),
          CustemTextFormFiled(hintText: 'Last Name', icon: Icons.person_pin),
          CustemTextFormFiled(hintText: 'Email', icon: Icons.email),
          CustemTextFormFiled(hintText: 'Password', icon: Icons.lock),
          Row(
            children: [
              CustemCheckBox(),
              const TwoTextOFtextSpan(
                text1: AppStrings.iHaveAgreeToOur,
                text2: AppStrings.termsAndCondition,
                color1: AppColor.texetErrorColor,
                color2: AppColor.appBarColor,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
