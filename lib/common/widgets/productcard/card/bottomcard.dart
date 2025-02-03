import 'package:ecommerceapplication/common/widgets/icon/circularicon.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddtoCard extends StatelessWidget {
  const TBottomAddtoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Tsizes.defaultspace, vertical: Tsizes.defaultspace),
      decoration: BoxDecoration(
        color: dark ? Tcolors.darergrey : Tcolors.light,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Tsizes.cardRadiusLg),
            topRight: Radius.circular(Tsizes.cardRadiusLg)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TcircularIcon(
                icon: Iconsax.minus,
                backgroundcolor: Tcolors.darergrey,
                width: 40,
                height: 40,
                color: Tcolors.white,
              ),
              const SizedBox(
                width: Tsizes.spacebtwitems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: Tsizes.spacebtwitems,
              ),
              const TcircularIcon(
                icon: Iconsax.add,
                backgroundcolor: Tcolors.black,
                width: 40,
                height: 40,
                color: Tcolors.white,
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(Tsizes.md),
                  backgroundColor: Tcolors.black,
                  side: const BorderSide(color: Tcolors.black)),
              onPressed: () {},
              child: Text("Add to Card"))
        ],
      ),
    );
  }
}
