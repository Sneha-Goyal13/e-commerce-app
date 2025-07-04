import 'package:e_app/common/widgets/layouts/gird_layout.dart';
import 'package:e_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/image_strings.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        //scrollDirection: Axis.vertical,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                const TPrimaryHeaderContainer(
                    child: Column(
                      children: [

                        ///appbar
                        THomeAppBar(),
                        SizedBox(
                          height: TSizes.spaceBtwSections - 10.0,
                        ),

                        ///searchbar
                        TSearchContainer(
                          text: 'Search in Store',
                        ),
                        SizedBox(height: TSizes.spaceBtwSections-5),

                        ///categories
                        Padding(
                          padding: EdgeInsets.only(left: TSizes.defaultSpace),
                          child: Column(
                            children: [

                              ///heading
                              TSectionHeading(
                                title: 'Popular Categories',
                                showActionButton: false,
                                textColor: TColors.white,
                              ),
                              SizedBox(height: TSizes.spaceBtwItems),

                              ///scrollable categories
                              THomeCategories(),
                            ],
                          ),
                        ),
                         SizedBox(height: TSizes.spaceBtwSections,)
                      ],
                    )
                ),

                ///body
                Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///promo slider
                        const TPromoSlider(
                          banners: [
                            TImages.promoBanner1,
                            TImages.promoBanner2,
                            TImages.promoBanner3
                          ],
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections,),

                        ///heading
                         TSectionHeading(
                          title: 'Popular Products',
                           onPressed: ()=>Get.to(()=>const AllProducts()),
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),


                        ///popular products
                       TGridLayout(itemCount: 2, itemBuilder: (_,index)=>const TProductCardVertical())

                      ],
                    )
                )
              ],
            ),
          )
    );
  }
}


