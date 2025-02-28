import 'package:ecommerceapplication/common/widgets/icon/circularicon.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper.dart';

class TproductcardHorizontal extends StatelessWidget {
  const TproductcardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          // boxShadow: [TShadowstyle.vertcialShadowstyle],
          borderRadius: BorderRadius.circular(Tsizes.productimageradius),
          color: dark ? Tcolors.darergrey : Tcolors.softgrey),
      child: Row(
        children: [
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(Tsizes.sm),
            backgroundColor: dark ? Tcolors.dark : Tcolors.white,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TroundedImages(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAHtCmA_RepVfTf_9blQPO98NK3yYWg49VaA&s",
                    applyimageradius: true,
                  ),
                ),
                Positioned(
                    child: TRoundedContainer(
                  radius: Tsizes.sm,
                  backgroundColor: Tcolors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: Tsizes.sm, vertical: Tsizes.xs),
                  child: Text(
                    "25%",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: Tcolors.black),
                  ),
                )),
                const Positioned(
                    top: 0,
                    right: 0,
                    child: TcircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: Tsizes.sm, left: Tsizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tproducttitle(
                        text: "Green Nike Half Sleeves Shirt",
                        smallsize: true,
                      ),
                      SizedBox(
                        height: Tsizes.spacebtwitems / 2,
                      ),
                      TBrandtitlewithVerfication(title: "Nike"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: TproductPrice(text: "256.0")),
                      Container(
                        decoration: const BoxDecoration(
                            color: Tcolors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(Tsizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    Tsizes.productimageradius))),
                        child: const SizedBox(
                          width: Tsizes.iconlg * 1.2,
                          height: Tsizes.iconlg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: Tcolors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
