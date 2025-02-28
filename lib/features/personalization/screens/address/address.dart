import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
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
          () => const AddnewScreen(),
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
                selectedaddress: false,
              ),
              TsingleAddress(
                selectedaddress: true,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: Tsizes.sm / 2,
              ),
              const Text(
                "(+91) 12345 67890",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: Tsizes.sm / 2,
              ),
              const Text(
                "823556 Timmy Coves, South Liana, Maine, 87665, USA",
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AddnewScreen extends StatefulWidget {
  const AddnewScreen({super.key});

  @override
  State<AddnewScreen> createState() => _AddnewScreenState();
}

class _AddnewScreenState extends State<AddnewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text("Add new Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Tsizes.defaultspace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: "Name"),
                ),
                const SizedBox(
                  height: Tsizes.spacebtwinputfields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: "Phone Number"),
                ),
                const SizedBox(
                  height: Tsizes.spacebtwinputfields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building_31),
                            labelText: " Street"),
                      ),
                    ),
                    const SizedBox(
                      width: Tsizes.spacebtwinputfields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: "Postal Code"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Tsizes.spacebtwinputfields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: " City"),
                      ),
                    ),
                    const SizedBox(
                      width: Tsizes.spacebtwinputfields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: "State"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Tsizes.spacebtwinputfields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global), labelText: "Country"),
                ),
                const SizedBox(
                  height: Tsizes.spacebtwinputfields,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text("Save")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
