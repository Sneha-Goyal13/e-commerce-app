import 'package:e_app/common/widgets/appbar/appbar.dart';
import 'package:e_app/common/widgets/images/t_circular_image.dart';
import 'package:e_app/common/widgets/texts/section_heading.dart';
import 'package:e_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

      ///body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TCircularImage(
                    image: TImages.user,
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            ///details
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            const TSectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            TProfileMenu(title: 'Name',value: 'Sneha Goyal',onPressed: (){}),
            TProfileMenu(title: 'Username',value: 'sneha_goyal_13',onPressed: (){}),

            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            const TSectionHeading(
              title: 'Personal Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            TProfileMenu(title: 'User ID',value: ' 131100',icon:Iconsax.copy,onPressed: (){}),
            TProfileMenu(title: 'E-mail',value: 'sneha_goyal_13',onPressed: (){}),
            TProfileMenu(title: 'Phone Number',value: '+91 7326847617',onPressed: (){}),
            TProfileMenu(title: 'Gender',value: 'Female',onPressed: (){}),
            TProfileMenu(title: 'Date of Birth',value: '13 Aug,2004',onPressed: (){}),
            
            const Divider(),
            const SizedBox(height: TSizes.spaceBtwItems,),
            
            Center(
              child: TextButton(onPressed: (){}, child: const Text('Close Account ',style: TextStyle(color: Colors.red),)),
            )
          ],
        ),
      ),
    );
  }
}

