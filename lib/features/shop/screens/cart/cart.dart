import 'package:e_app/common/widgets/icons/t_circular_icon.dart';
import 'package:e_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_app/common/widgets/texts/product_price_text.dart';
import 'package:e_app/common/widgets/texts/product_title_text.dart';
import 'package:e_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_app/features/shop/screens/checkout/checkout.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: ()=>Get.to(()=>const CheckoutScreen()), child: const Text('Checkout \$263.0')),
      ),
    );
  }
}
