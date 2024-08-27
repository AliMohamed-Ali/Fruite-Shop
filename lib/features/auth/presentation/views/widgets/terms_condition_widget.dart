import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  final Function(bool) onChanged;
  final bool initialValue;
  final VoidCallback onTermsTap;

  const TermsAndConditionsWidget({
    Key? key,
    required this.onChanged,
    this.initialValue = false,
    required this.onTermsTap,
  }) : super(key: key);

  @override
  _TermsAndConditionsWidgetState createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value ?? false;
                widget.onChanged(_isChecked);
              });
            },
            side: const BorderSide(color: Color(0xFFDDDFDF), width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: l10n.agreeTo,
              style: TextStyles.semiBold16.copyWith(color: AppColors.grayColor),
              children: [
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onTermsTap,
                    text: l10n.termsAndConditions,
                    style: TextStyles.bold16
                        .copyWith(color: AppColors.lightPrimaryColor)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
