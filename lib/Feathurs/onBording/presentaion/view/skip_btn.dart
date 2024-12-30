import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/Text_them.dart';
import 'package:rawee/Core/utils/app_strings.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // custemVavigationRouter(context, 'Home');
        },
        child: Text(
          AppStrings.skip,
          style: AppTextTheme.textStyleWhite14,
        ),
      ),
    );
  }
}
