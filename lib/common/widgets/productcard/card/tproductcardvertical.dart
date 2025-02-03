import 'package:ecommerceapplication/common/styles/shadow.dart';
import 'package:ecommerceapplication/common/widgets/icon/circularicon.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/features/shop/screens/product/product_details.dart';
import 'package:ecommerceapplication/utils/constants/enums.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../tverticalext/tverticaltext.dart';

class Tproductcard extends StatefulWidget {
  const Tproductcard({super.key});

  @override
  State<Tproductcard> createState() => _TproductcardState();
}

class _TproductcardState extends State<Tproductcard> {
  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowstyle.vertcialShadowstyle],
            borderRadius: BorderRadius.circular(Tsizes.productimageradius),
            color: dark ? Tcolors.darergrey : Tcolors.white),
        child: Column(
          children: [
            // thumbnail, whislistbutton, discount tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(Tsizes.sm),
              backgroundColor: dark ? Tcolors.dark : Tcolors.white,
              child: Stack(
                children: [
                  const TroundedImages(
                      applyimageradius: true,
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd_GlQx1e2j0WQ4ogcweWvfE0-BCNQ7EGbHQ&s"),
                  Positioned(
                    top: 12,
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
                    ),
                  ),
                  // favourite
                  const Positioned(
                    top: 00,
                    right: 00,
                    child: TcircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                  // TroundedImages(
                  //     applyimageradius: true,
                  //     image:
                  //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd_GlQx1e2j0WQ4ogcweWvfE0-BCNQ7EGbHQ&s")
                ],
              ),
            ),
            const SizedBox(
              height: Tsizes.spacebtwitems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: Tsizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Tproducttitle(
                    text: "Green Nike Air Shoes",
                    smallsize: true,
                  ),
                  SizedBox(
                    height: Tsizes.spacebtwitems / 2,
                  ),
                  TBrandtitlewithVerfication(
                    title: "Nike",
                    brandTextsizes: TextSizes.large,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: Tsizes.sm),
                  child: TproductPrice(
                    text: '3.55',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Tcolors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Tsizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(Tsizes.productimageradius))),
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
            ),
          ],
        ),
      ),
    );
  }
}
