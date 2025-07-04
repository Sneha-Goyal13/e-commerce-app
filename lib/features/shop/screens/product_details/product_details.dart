import 'package:e_app/common/widgets/appbar/appbar.dart';
import 'package:e_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_app/common/widgets/icons/t_circular_icon.dart';
import 'package:e_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_app/common/widgets/texts/section_heading.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_app/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/image_strings.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children:[
            ///product image slider
            const TProductImageSlider(),

            ///product details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  ///rating and share.
                  const TRatingAndShare(),

                  ///price,title,stock and brand
                  const TProductMetaData(),

                  ///attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///checkout button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for blue nike shoes.There are more things that can be added.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviews(1999)', showActionButton: false),
                      IconButton(
                          onPressed: ()=>Get.to(()=>const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
