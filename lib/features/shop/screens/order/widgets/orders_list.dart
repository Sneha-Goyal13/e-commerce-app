import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_,__)=>const SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder:(_,index)=> TRoundedContainer(
        showBorder: true,
        backgroundColor: dark?TColors.dark:TColors.light,
        padding: const EdgeInsets.all(TSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Row(
             children: [
               ///icon
              const Icon(Iconsax.ship),
               const SizedBox(width: TSizes.spaceBtwItems/2,),

               ///status and date
               Expanded(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Processing',
                       style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primaryColor,fontSizeDelta: 1),
                     ),
                     Text(
                       '23 Nov,2024',
                       style: Theme.of(context).textTheme.headlineSmall,
                     ),
                   ],
                 ),
               ),

               ///icon
               IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: TSizes.iconSm)),
             ],
           ) ,
            const SizedBox(height: TSizes.spaceBtwItems),

            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems/2,),

                      ///status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '[648764t3]',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems/2,),

                      ///status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '3 Dec,2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ) ,
          ],
        ),
      ),
    );
  }
}
