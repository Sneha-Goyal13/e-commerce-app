import 'package:e_app/features/authenitication/screens/password_configuration/reset_password.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.changeYourPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections * 2,
              ),

              ///text field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///submit button
              SizedBox(
                width:double.infinity ,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResetPassword()), child: const Text(TTexts.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
