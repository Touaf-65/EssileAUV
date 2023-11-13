import 'package:essile/utils/constants/colors.dart';
import 'package:essile/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = EssileHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? EssileColors.darkerGrey : EssileColors.grey,
            thickness: 0.9,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? EssileColors.darkerGrey : EssileColors.grey,
            thickness: 0.7,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
