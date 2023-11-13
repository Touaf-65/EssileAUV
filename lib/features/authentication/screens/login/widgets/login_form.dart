import 'package:essile/utils/constants/colors.dart';
import 'package:essile/utils/constants/sizes.dart';
import 'package:essile/utils/constants/text_strings.dart';
import 'package:essile/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: EssileSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: EssileTexts.email),
            ),
            const SizedBox(height: EssileSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: EssileTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: EssileSizes.spaceBtwItems,
            ),

            ///
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(EssileTexts.rememberMe)
                  ],
                ),
                TextButton(
                    onPressed: () {}, //=> Get.to(() => const ForgetPassword()),
                    child: const Text(EssileTexts.forgotPassword))
              ],
            ),
            const SizedBox(
              height: EssileSizes.spaceBtwSections,
            ),

            /// Sign In
            SizedBox(
              width: EssileHelperFunctions.screenWidth() * .4,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  minimumSize: MaterialStateProperty.all(Size(50,50)),
                  maximumSize: MaterialStateProperty.all(Size(50,100)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                ),
                onPressed: () {},
                child: const Text(EssileTexts.signIn),
              ),
            ),
            const SizedBox(height: EssileSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
