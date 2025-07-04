import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/common/widgets/texts/section_heading.dart';
import 'package:e_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address',buttonTitle:'Change',onPressed: (){}),
        Text('Sneha Goyal',style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('+91 354738656',style: Theme.of(context).textTheme.bodyMedium,), 
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/2,),

        Row(
          children: [
            const Icon(Icons.location_history,color: Colors.grey,size: 16),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Expanded(child: Text('Sector 25,Chandigarh,India',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),
      ],
    );
  }
}
