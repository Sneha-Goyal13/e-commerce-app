import 'package:e_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:e_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:e_app/common/widgets/appbar/appbar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar:
          const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      ///body
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Ratings and reviews are verified and are from people wo use the same type of device that you use'),
            const SizedBox(height: TSizes.spaceBtwItems),

            ///overall product rating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.5),
            Text('12,333',style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///user reviews  list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      )),
    );
  }
}

