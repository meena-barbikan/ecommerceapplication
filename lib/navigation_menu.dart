import 'package:ecommerceapplication/features/shop/screens/home/home.dart';
import 'package:ecommerceapplication/features/shop/screens/store/store.dart';
import 'package:ecommerceapplication/features/shop/screens/whishlist/whishlist.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkmode = Thelperfunctions.isdarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            backgroundColor: darkmode ? Tcolors.black : Tcolors.white,
            indicatorColor: darkmode
                ? Tcolors.white.withOpacity(0.1)
                : Tcolors.black.withOpacity(0.1),
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Whislist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "profile"),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeView(),
    const Store(),
    const Whishlist(),
    Container(color: Colors.greenAccent)
  ];
}
