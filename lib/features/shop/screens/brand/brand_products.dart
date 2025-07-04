import 'package:e_app/common/widgets/appbar/appbar.dart';
import 'package:e_app/common/widgets/brands/brand_card.dart';
import 'package:e_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:TAppBar(title: Text('Nike'),showBackArrow: true,) ,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
            children: [
             const  TBrandCard(showBorder: true),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSortableProducts(),
            ],
          ) ,
        ),
      ),
    );
  }
}
