import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/Text_them.dart';
import 'package:rawee/Core/utils/app_color.dart';

class CustmeBtn extends StatelessWidget {
  const CustmeBtn(
      {super.key,
      required this.btnName,
      required this.width,
      required this.height});
  final String btnName;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: AppColor.primaryColor,
        foregroundColor: AppColor.hoverColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        btnName,
        style: AppTextTheme.textStyleblack18,
      ),
    );
  }
}
