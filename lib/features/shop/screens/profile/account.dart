import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tile/list_tile.dart';
import '../../../../common/widgets/list_tile/settings_menu.dart';
import '../../../../utils/constants/size.dart';
import '../../../personalization/screens/address/address.dart';
import '../home/home.dart';
import 'profilescreen.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TprimaryCurved(
              child: Column(
                children: [
                  TAppbar(
                    title: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Tcolors.white),
                    ),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwitems,
                  ),
                  Tuserprofile(
                    title: 'SelvaMeena',
                    subtitle: 'meena@gmail.com',
                    onPressed: () => Get.to(() => const Profilescreen()),
                    images:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1S7HuNiblM0jOv9DMgT74HR2ImmGyJfC6Lg&s=',
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwsections,
                  ),
                ],
              ),
            ),
            // body
            Padding(
              padding: const EdgeInsets.all(Tsizes.defaultspace),
              child: Column(
                children: [
                  const Tsectionheading(
                    title: "Account Settigs",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwitems,
                  ),
                  SettingsMenu(
                    title: 'My Address',
                    icon: Iconsax.safe_home,
                    subtitle: 'Set Shopping delivery address',
                    ontap: () => Get.to(() => const UseraddressScreen()),
                  ),
                  SettingsMenu(
                    title: 'My Card',
                    icon: Iconsax.shopping_cart,
                    subtitle: 'Add, remove products ans move to checkout',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'My Orders',
                    icon: Iconsax.bag_tick,
                    subtitle: 'In-progress and Completed Orders',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'Bank Account',
                    icon: Iconsax.bank,
                    subtitle: 'Withdraw balance to registered bank account',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'My Coupons',
                    icon: Iconsax.discount_shape,
                    subtitle: 'List of all the discounted Coupons',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'Notifications',
                    icon: Iconsax.notification,
                    subtitle: 'Set any kind of notification message',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'Account Privacy',
                    icon: Iconsax.security_card,
                    subtitle: 'Manage data usage and connected accounts',
                    ontap: () {},
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwitems,
                  ),
                  const Tsectionheading(
                    title: "App Settigs",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwitems,
                  ),
                  SettingsMenu(
                    title: 'Load Data ',
                    icon: Iconsax.document_upload,
                    subtitle: 'Upload data to Your Cloud Firebase',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'Geolocation',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                    subtitle: 'Set recommendation based on location',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'Safe Mode',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                    subtitle: 'Search result is safe for all ages',
                    ontap: () {},
                  ),
                  SettingsMenu(
                    title: 'HD Image Quality ',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                    subtitle: 'Set image quality to be seen',
                    ontap: () {},
                  ),
                  //logout button
                  const SizedBox(
                    height: Tsizes.spacebtwsections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwsections * 2.5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
