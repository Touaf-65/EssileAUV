import 'package:essile/common/styles/spacing_styles.dart';
import 'package:essile/common/widgets/login_signup/form_divider.dart';
import 'package:essile/features/authentication/screens/login/widgets/login_form.dart';
import 'package:essile/features/authentication/screens/login/widgets/login_header.dart';
import 'package:essile/utils/constants/sizes.dart';
import 'package:essile/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EssileSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const SizedBox(height: EssileSizes.spaceBtwSections + 15),

              const LoginHeader(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(
                dividerText: EssileTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: EssileSizes.spaceBtwSections),

              /// Footer
              //const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
