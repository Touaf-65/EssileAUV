import 'package:essile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:essile/utils/constants/colors.dart';
import 'package:essile/utils/constants/sizes.dart';
import 'package:essile/utils/device/device_utility.dart';
import 'package:essile/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EssileHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: EssileDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: EssileSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        axisDirection: Axis.vertical,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? EssileColors.light : EssileColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
