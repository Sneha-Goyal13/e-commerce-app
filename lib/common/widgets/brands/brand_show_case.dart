import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          ///brand with product count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems,),

          ///brand top 3 product images
          Row(
              children: images.map((image)=>brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded
      (child: TRoundedContainer(
      height:100 ,
      backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(fit: BoxFit.contain,image: AssetImage(image),),
    ),
    );
  }

}
