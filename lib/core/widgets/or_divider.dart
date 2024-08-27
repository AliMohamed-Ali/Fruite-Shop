import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: Color(0xFFDDDFDF), // Set the color to gray
            thickness: 1, // Set the thickness of the line
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(S.of(context).or, style: TextStyles.semiBold16),
        ),
        const Expanded(
          child: Divider(
            color: Color(0xFFDDDFDF), // Set the color to gray
            thickness: 1, // Set the thickness of the line
          ),
        ),
      ],
    );
  }
}
