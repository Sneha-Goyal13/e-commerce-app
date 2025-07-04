import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_app/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:e_app/features/shop/screens/checkout/widgets/billing_amount.dart';
import 'package:e_app/features/shop/screens/checkout/widgets/billing_payment.dart';
import 'package:e_app/navigation_menu.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///items in cart
              const TCartItems(showActionButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///coupon
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///billing section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    ///pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///payment method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    ///address
                    TBillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwItems),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(
                  () => SuccessScreen(
                    image: TImages.successfulPaymentIcon,
                    title: 'Payment Success!',
                    subtitle: 'Your items will be shipped soon',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  ),
                ),
            child: const Text('Checkout \$263.0')),
      ),
    );
  }
}
