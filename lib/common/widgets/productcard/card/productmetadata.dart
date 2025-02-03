import 'package:ecommerceapplication/common/widgets/images/t_circular_image.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/Tproductprice_text.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/enums.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../searchbar/searchbar.dart';

class Productmetadata extends StatelessWidget {
  const Productmetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TRoundedContainer(
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
            const SizedBox(
              width: Tsizes.spacebtwitems,
            ),
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: Tsizes.spacebtwitems,
            ),
            const TproductpriceText(
              price: "175",
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 1.5,
        ),
        const Tproducttitle(text: "Green Nike Sports Shirt"),
        const SizedBox(
          height: Tsizes.spacebtwitems / 1.5,
        ),
        Row(
          children: [
            const Tproducttitle(text: "Status"),
            const SizedBox(
              height: Tsizes.spacebtwitems / 1.5,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 1.5,
        ),
        Row(
          children: [
            TCircularImage(
                image: "",
                width: 32,
                height: 32,
                overlaycolor: dark ? Tcolors.white : Tcolors.black),
            const TBrandtitlewithVerfication(
                title: "Nike", brandTextsizes: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
