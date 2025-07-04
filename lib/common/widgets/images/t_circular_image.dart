import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/sizes.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
     this.width=56,
     this.height=56,
     this.padding=TSizes.sm,
    required this.image,
    this.backgroundColor,
    this.fit=BoxFit.cover,
     this.isNetworkImage=false,
    this.overlayColor,
  });

  final double width, height, padding;
  final String image;
  final Color? backgroundColor;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overlayColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color:backgroundColor?? (dark ? TColors.black : TColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: fit,
        image: isNetworkImage?NetworkImage(image) :AssetImage(image)as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
