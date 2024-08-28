import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/generated/l10n.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final IconButton? prefixIcon;
  final IconButton? suffixIcon;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Color borderColor;
  final double borderRadius;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.borderColor = AppColors.borderColor,
    this.borderRadius = 8.0, this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: borderColor, width: 1.0),
    );
    return TextFormField(
      onSaved: onSaved,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: (val) {
        if (val!.isEmpty) {
          return S.of(context).fieldIsRequired;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color: AppColors.labelColor),
        labelStyle: TextStyles.bold13.copyWith(color: AppColors.labelColor),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: AppColors.fillColor,
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
      ),
    );
  }
}
