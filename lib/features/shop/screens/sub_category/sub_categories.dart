import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_app/common/widgets/texts/section_heading.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text(
          'Sports',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///banner
              const TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///sub-categories

              Column(
                children: [
                  TSectionHeading(title: 'Sports Shoes', onPressed: () {}),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: TSizes.spaceBtwItems);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
