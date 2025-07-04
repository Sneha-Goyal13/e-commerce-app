import 'package:e_app/common/widgets/images/t_circular_image.dart';
import 'package:e_app/common/widgets/texts/brand_title_text.dart';
import 'package:e_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_app/common/widgets/texts/product_price_text.dart';
import 'package:e_app/common/widgets/texts/product_title_text.dart';
import 'package:e_app/utils/constants/enums.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price and sale price
        Row(
          children: [
            ///sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            ///price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///title
        const TProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(width: TSizes.spaceBtwItems)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// brand
        const Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
             // overlayColor: dark ? TColors.white : TColors.black,
            ),
            TBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
