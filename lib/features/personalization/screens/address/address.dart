import 'package:e_app/common/widgets/appbar/appbar.dart';
import 'package:e_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_app/features/personalization/screens/address/add_new_address.dart';
import 'package:e_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primaryColor,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(
          Iconsax.add,
          color: Colors.white,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TSingleAddress(selectedAddress: true),
              const TSingleAddress(selectedAddress: false)
            ],
          ),
        ),
      ),
    );
  }
}
