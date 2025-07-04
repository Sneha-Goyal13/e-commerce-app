import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_app/common/widgets/texts/product_price_text.dart';
import 'package:e_app/common/widgets/texts/product_title_text.dart';
import 'package:e_app/features/shop/screens/product_details/product_details.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../styles/shadow.dart';
import '../../icons/t_circular_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    ///container with side padding,color,edges,radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.softGrey),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Thumbnail,wishlist button,sale tag
            TRoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.white,
              child:  Stack(
                children: [
                  ///thumbnail image
                    const SizedBox(
                    height:120,
                    width: 120,
                    child:  TRoundedImage(
                      //padding: EdgeInsets.only(top: 15),
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                      backgroundColor: Colors.white,
                    ),
                  ),

                  ///sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
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
                  ),

                  ///fav icon button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),

            ///details
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(left: TSizes.sm+2,top: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: 'Green Nike half sleeves shirt',smallSize: true,),
                        SizedBox(height: TSizes.spaceBtwItems/2),
                        TBrandTitleTextWithVerifiedIcon(title: 'Nike')
                      ],
                    ),

                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: TProductPriceText(price: '256')),
                        Container(
                          decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                          child: const SizedBox(
                              width: TSizes.iconLg * 1.2,
                              height: TSizes.iconLg * 1.2,
                              child: Center(
                                  child: Icon(Iconsax.add, color: TColors.white))),
                        )

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
