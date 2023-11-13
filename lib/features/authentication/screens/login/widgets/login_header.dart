import 'package:essile/utils/constants/image_strings.dart';
import 'package:essile/utils/constants/sizes.dart';
import 'package:essile/utils/constants/text_strings.dart';
import 'package:essile/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EssileHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Container(
        //   width: EssileHelperFunctions.screenWidth() * 1.0,
        //   height: EssileHelperFunctions.screenHeight() * 1.0,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       fit: BoxFit.fitWidth,
        //       image: Image.asset(EssileImages.essile).image
        //     )
        //   ),
        // ),
        Container(
          width: EssileHelperFunctions.screenWidth() * .35,
          height: EssileHelperFunctions.screenWidth() * .35,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle
          ),
          child: Image.asset(EssileImages.essile,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: EssileSizes.md * 1.3),
        Text(
          EssileTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: EssileSizes.sm),
        Text(
          EssileTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
