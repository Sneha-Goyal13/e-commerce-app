import 'package:e_app/common/widgets/texts/brand_title_text.dart';
import 'package:e_app/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor=TColors.primaryColor,
     this.maxLines=1,
    this.textAlign=TextAlign.center,
     this.brandTextSize=TextSizes.small,
  });

  final String title;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Flexible(
              child: TBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
            textAlign: textAlign,
          )),
          const SizedBox(
            width: TSizes.xs,
          ),
          Icon(
            Iconsax.verify5,
            color: iconColor,
            size: TSizes.iconXs,
          )
        ],
      ),
    );
  }
}
