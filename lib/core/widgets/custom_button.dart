import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.name});
  final void Function()? onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyles.bold16,
        ),
      ),
    );
  }
}
