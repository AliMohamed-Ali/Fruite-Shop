import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class CustomSocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const CustomSocialButton({
    required this.iconPath,
    required this.label,
    this.backgroundColor = Colors.white,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: const Color(0xFFDDDFDF)),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 24.0,
              width: 24.0,
            ),
            Expanded(
              child: Text(
                label,
                style: TextStyles.semiBold16,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
