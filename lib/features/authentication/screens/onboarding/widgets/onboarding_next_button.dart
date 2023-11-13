import 'package:essile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:essile/utils/constants/colors.dart';
import 'package:essile/utils/constants/sizes.dart';
import 'package:essile/utils/device/device_utility.dart';
import 'package:essile/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EssileHelperFunctions.isDarkMode(context);

    return Positioned(
      right: EssileSizes.defaultSpace,
      bottom: EssileDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? EssileColors.primary : EssileColors.black),
        child: const Icon(Iconsax.arrow_bottom4),
      ),
    );
  }
}
