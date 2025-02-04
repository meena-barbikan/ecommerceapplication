import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/features/personalization/screens/address/address_new_screen.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UseraddressScreen extends StatelessWidget {
  const UseraddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(
          () => const AddressNewScreen(),
        ),
        backgroundColor: Tcolors.primaryColor,
        child: const Icon(
          Iconsax.add,
          color: Tcolors.white,
        ),
      ),
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              TsingleAddress(
                selectedaddress: true,
              ),
              TsingleAddress(
                selectedaddress: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TsingleAddress extends StatelessWidget {
  final bool selectedaddress;
  const TsingleAddress({super.key, required this.selectedaddress});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(Tsizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor:
          selectedaddress ? Tcolors.primaryColor : Colors.transparent,
      bordercolor: selectedaddress
          ? Colors.transparent
          : dark
              ? Tcolors.darergrey
              : Tcolors.grey,
      margin: const EdgeInsets.only(bottom: Tsizes.spacebtwitems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedaddress ? Iconsax.tick_circle5 : null,
                color: selectedaddress
                    ? dark
                        ? Tcolors.light
                        : Tcolors.dark
                    : null),
          ),
          Column(
            children: [
              Text(
                "823556 Timmy Coves, South Liana, Maine, 87665, USA",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: Tsizes.sm / 2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
