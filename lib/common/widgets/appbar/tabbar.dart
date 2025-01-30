import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/device/device_utilities.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class Ttabbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const Ttabbar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Material(
      color: dark ? Tcolors.black : Tcolors.white,
      child: TabBar(
        tabs: tabs,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: Tcolors.primaryColor,
        labelColor: dark ? Tcolors.white : Tcolors.primaryColor,
        unselectedLabelColor: Tcolors.darergrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TdeviceUtils.getAppbarHeight());
}
