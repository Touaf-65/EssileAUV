import 'package:essile/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:essile/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:essile/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:essile/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:essile/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:essile/utils/constants/image_strings.dart';
import 'package:essile/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            scrollDirection: Axis.vertical,
            children: const [
              OnBoardingPage(
                image: EssileImages.OnBoardingImage1,
                title: EssileTexts.OnBoardingTitle1,
                subTitle: EssileTexts.OnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EssileImages.OnBoardingImage2,
                title: EssileTexts.OnBoardingTitle2,
                subTitle: EssileTexts.OnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EssileImages.OnBoardingImage3,
                title: EssileTexts.OnBoardingTitle3,
                subTitle: EssileTexts.OnBoardingSubTitle3,
              ),
            ],
          ),
          //
          const OnBoardingSkip(),
          //
          const OnBoardingDotNavigation(),
          //
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
