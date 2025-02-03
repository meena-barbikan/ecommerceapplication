import 'package:ecommerceapplication/common/widgets/productcard/card/rating.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:ecommerceapplication/utils/http/https.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/productcard/card/bottomcard.dart';
import '../../../../common/widgets/productcard/card/product_attributes.dart';
import '../../../../common/widgets/productcard/card/productmetadata.dart';
import '../../../../common/widgets/productcard/productimage_slider.dart';
import 'productreview/productreview.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddtoCard(),
      body: SingleChildScrollView(
        child: Column(children: [
          TProductimageSlider(
            dark: dark,
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: Tsizes.defaultspace, left: Tsizes.defaultspace),
            child: Column(
              children: [
                const Rating(),
                const Productmetadata(),
                const TProductAttributes(),
                const SizedBox(
                  height: Tsizes.spacebtwsections,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("CheckOut"))),
                const SizedBox(
                  height: Tsizes.spacebtwsections,
                ),
                const Tsectionheading(
                  title: "Description",
                  showActionButton: false,
                ),
                const SizedBox(
                  height: Tsizes.spacebtwitems,
                ),
                const ReadMoreText(
                  "This is a Product description for Blue Nike Sleeve less vest.there are more things that can be added but i am just practicing and nothing else",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "show more",
                  trimExpandedText: "less",
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: Tsizes.spacebtwsections,
                ),
                const Divider(),
                const SizedBox(
                  height: Tsizes.spacebtwitems,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Tsectionheading(
                      title: "Reviews(199)",
                      showActionButton: false,
                    ),
                    IconButton(
                        onPressed: () => Get.to(() => const Productreview()),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        )),
                  ],
                ),
                const SizedBox(
                  height: Tsizes.spacebtwsections,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
