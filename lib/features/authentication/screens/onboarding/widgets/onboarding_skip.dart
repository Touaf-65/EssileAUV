import 'package:essile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:essile/utils/constants/sizes.dart';
import 'package:essile/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EssileDeviceUtils.getAppBarHeight(),
      right: EssileSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
