import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/services/shared_preferance_signletone.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.title,
      required this.subtitle,
      required this.isVisible});
  final String image, backgroundImage, subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(
                    backgroundImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    image,
                  ),
                ),
                Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () async {
                        await Pref.setBool(kIsOnboardingCompleted, true);
                        Navigator.of(context).pushReplacementNamed(
                          AppRoutes.signin,
                        );
                      },
                      child: Text(
                        S.of(context).onBoardingSkip,
                        style: TextStyles.regular13
                            .copyWith(color: AppColors.grayColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 64),
          title,
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Text(subtitle,
                textAlign: TextAlign.center, style: TextStyles.semiBold13),
          ),
        ],
      ),
    );
  }
}
