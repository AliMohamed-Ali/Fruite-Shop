import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/widgets/custom_text_field.dart';
import 'package:fruit_app/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:fruit_app/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              const HomeAppBar(),
              const SizedBox(height: kHorizontalPadding),
              CustomTextField(
                prefixIcon: SizedBox(
                  width: 20,
                  child: Center(
                    child: SvgPicture.asset(Assets.imagesSearchIcon),
                  ),
                ),
                suffixIcon: SizedBox(
                    width: 20,
                    child: Center(
                        child: SvgPicture.asset(Assets.imagesFillterIcon))),
                hintText: S.of(context).searchAppBarTitle,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
