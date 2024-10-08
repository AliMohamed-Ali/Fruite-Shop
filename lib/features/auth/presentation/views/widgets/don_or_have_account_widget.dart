import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class DonORHaveAccountWidget extends StatelessWidget {
  const DonORHaveAccountWidget(
      {super.key,
   
      required this.text1,
      required this.text2, required this.onTap});

  final String text1;
  final String text2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: text1,
              style:
                  TextStyles.semiBold16.copyWith(color: AppColors.grayColor)),
          TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: text2,
              style: TextStyles.semiBold16
                  .copyWith(color: AppColors.darkPrimaryColor))
        ],
      ),
    );
  }
}
