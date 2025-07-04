import 'package:e_app/common/widgets/appbar/appbar.dart';
import 'package:e_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:e_app/common/widgets/texts/section_heading.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UploadData extends StatelessWidget {
  const UploadData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Upload Data'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TSectionHeading(
                  title: 'Main Record', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSettingsMenuTile(
                icon: Iconsax.category,
                title: 'Upload Categories',
                subTitle: '',
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.document_upload,color: TColors.primaryColor),
                ),
              ),
              //const SizedBox(height: TSizes.spaceBtwItems),
              TSettingsMenuTile(
                icon: Iconsax.shop,
                title: 'Upload Brands',
                subTitle: '',
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.document_upload,color: TColors.primaryColor),
                ),
              ),
             // const SizedBox(height: TSizes.spaceBtwItems),
              TSettingsMenuTile(
                icon: Iconsax.shopping_cart,
                title: 'Upload Products',
                subTitle: '',
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.document_upload,color: TColors.primaryColor),
                ),
              ),
             // const SizedBox(height: TSizes.spaceBtwItems),
              TSettingsMenuTile(
                icon: Iconsax.image,
                title: 'Upload Banners',
                subTitle: '',
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.document_upload,color: TColors.primaryColor),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Relationships',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                   SizedBox(height: 5,),
                  Text('Make sure you have alrwady uploaded all the content above',style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height:TSizes.spaceBtwItems),

              TSettingsMenuTile(
                icon: Iconsax.link,
                title: 'Upload Brands & Categories Relational Data',
                subTitle: '',
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.document_upload,color: TColors.primaryColor),
                ),
              ),
              //const SizedBox(height: TSizes.spaceBtwItems),
              TSettingsMenuTile(
                icon: Iconsax.link,
                title: 'Upload Product Categories Relational Data',
                subTitle: '',
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.document_upload,color: TColors.primaryColor),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
