import 'package:flutter/material.dart';
import 'package:rawee/Core/database/cache/cache_helper.dart';
import 'package:rawee/Core/routes/custem_navigation_router.dart';
import 'package:rawee/Core/services/service_locator_get_it.dart';
import 'package:rawee/Core/utils/text_them.dart';
import 'package:rawee/Core/utils/app_strings.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          getIt<CacheHelper>().saveData(key: 'isFirstTime', value: true);
          custemNavigationRouterReplacement(context, 'SignUpView');
        },
        child: Text(
          AppStrings.skip,
          style: AppTextTheme.textStyleWhite14,
        ),
      ),
    );
  }
}
