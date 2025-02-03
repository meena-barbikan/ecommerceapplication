import 'package:ecommerceapplication/common/chip/Tchip.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
            padding: const EdgeInsets.all(Tsizes.md),
            backgroundColor: dark ? Tcolors.darergrey : Tcolors.grey,
            child: Column(
              children: [
                Row(
                  children: [
                    const Tsectionheading(
                      title: "Variation",
                      showActionButton: false,
                    ),
                    const SizedBox(
                      width: Tsizes.spacebtwitems,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Tproducttitle(
                              text: "Price",
                              smallsize: true,
                            ),
                            Text(
                              "\$25",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough),
                            ),
                            const SizedBox(
                              width: Tsizes.spacebtwitems,
                            ),
                            const TproductPrice(text: "20")
                          ],
                        ),
                        Row(
                          children: [
                            const Tproducttitle(
                              text: "Stock",
                              smallsize: true,
                            ),
                            Text(
                              "In Stock",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const Tproducttitle(
                  text:
                      "This is the Descripition of the product and it can go upto max 4 lines",
                  maxlines: 4,
                  smallsize: true,
                )
              ],
            )),
        const SizedBox(
          height: Tsizes.spacebtwitems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Tsectionheading(
              title: "Colors",
              showActionButton: false,
            ),
            const SizedBox(
              height: Tsizes.spacebtwitems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                Tchip(
                  text: "Green",
                  selected: false,
                  onselected: (value) {},
                ),
                Tchip(
                  text: "Blue",
                  selected: true,
                  onselected: (value) {},
                ),
                Tchip(
                  text: "yellow",
                  selected: false,
                  onselected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Tsectionheading(title: "Size"),
            const SizedBox(
              height: Tsizes.spacebtwitems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                Tchip(
                  text: "EU 34",
                  selected: true,
                  onselected: (value) {},
                ),
                Tchip(
                  text: "EU 36",
                  selected: false,
                  onselected: (value) {},
                ),
                Tchip(
                  text: "EU 38",
                  selected: false,
                  onselected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
