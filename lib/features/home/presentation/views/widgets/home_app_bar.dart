import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

import '../../../../../core/utils/app_text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        l10n.homeAppBarTitle,
        style: TextStyles.regular16.copyWith(
          color: AppColors.grayColor,
        ),
      ),
      subtitle: const Text("علي محمد", style: TextStyles.bold16),
      leading: Image.asset(
        Assets.imagesProfile,
      ),
      trailing: CircleAvatar(
        backgroundColor: const Color(0xFFEEF8ED),
        radius: 20,
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
    );
  }
}
