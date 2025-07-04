import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showActionButtons = true});

  final bool showActionButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showActionButtons) const SizedBox(height: TSizes.spaceBtwItems),///if statement will act on only the widget right next to it
          if (showActionButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ///extra space
                    SizedBox(width: 70),

                    ///add and remove button
                    TProductQuantityAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '263')
              ],
            )
        ],
      ),
    );
    ;
  }
}
