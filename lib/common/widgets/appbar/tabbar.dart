import 'package:e_app/utils/constants/color.dart';
import 'package:e_app/utils/device/device_utility.dart';
import 'package:e_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

///if we want to add the background color to tabs we have to wrap them in material widget
///to do that we need [preferredSized] widget and that 's why we created custo class

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color:dark?TColors.black:TColors.white ,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primaryColor,
        labelColor:dark?TColors.white:TColors.primaryColor  ,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(TDeviceUtils.getAppBarHeight()) ;
}
