import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../searchbar/searchbar.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? Tcolors.dark : Tcolors.white,
      padding: const EdgeInsets.only(
          top: Tsizes.sm, bottom: Tsizes.sm, right: Tsizes.sm, left: Tsizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "Have a promo code ?Enter here"),
            ),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? Tcolors.white.withOpacity(0.5)
                          : Tcolors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  onPressed: () {},
                  child: const Text("Apply")))
        ],
      ),
    );
  }
}
