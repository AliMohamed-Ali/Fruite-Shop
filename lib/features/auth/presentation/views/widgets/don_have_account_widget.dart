import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class DonHaveAccountWidget extends StatelessWidget {
  const DonHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: l10n.dontHaveAccount,
              style:
                  TextStyles.semiBold16.copyWith(color: AppColors.grayColor)),
          TextSpan(
              text: l10n.signUp,
              style: TextStyles.semiBold16
                  .copyWith(color: AppColors.darkPrimaryColor))
        ],
      ),
    );
  }
}
