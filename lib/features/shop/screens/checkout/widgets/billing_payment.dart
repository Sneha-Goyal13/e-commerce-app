import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/common/widgets/texts/section_heading.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method',buttonTitle:'Change',onPressed: (){}),
        const SizedBox(height: TSizes.spaceBtwItems/2),

        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor:dark? TColors.light:TColors.white,
              padding:const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.googlePay),fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.spaceBtwItems/2),
            Text('Google Pay',style: Theme.of(context).textTheme.bodyLarge)
          ],
        )
      ],
    );
  }
}
