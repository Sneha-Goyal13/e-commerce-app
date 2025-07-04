import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/t_circular_icon.dart';

class TProductQuantityAddRemoveButton extends StatelessWidget {
  const TProductQuantityAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 28,
          height: 28,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)?TColors.white:TColors.black,
          backgroundColor:THelperFunctions.isDarkMode(context)?TColors.white:TColors.black ,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text('2',style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TCircularIcon(
          icon: Iconsax.add,
          width: 28,
          height: 28,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor:TColors.primaryColor ,
        ),
      ],
    );
  }
}
