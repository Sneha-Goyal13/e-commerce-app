import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({super.key
    , required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent=288.0,
  });

  final int itemCount;
  final double?mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
     /// height: double.maxFinite,
      child: GridView.builder(
         itemCount: itemCount,
         shrinkWrap: true,
        padding: EdgeInsets.zero,
         physics: const NeverScrollableScrollPhysics(),
         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
           mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing:TSizes.gridViewSpacing,

           //childAspectRatio: 0.75
         ),
         itemBuilder: itemBuilder,
       ),
    );
  }}
