import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper.dart';
import '../layout/tbrandcard.dart';
import '../searchbar/searchbar.dart';

class Tbrandshowcase extends StatelessWidget {
  final List<String> images;
  const Tbrandshowcase({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      bordercolor: Tcolors.darergrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(Tsizes.sm),
      margin: const EdgeInsets.only(
        bottom: Tsizes.spacebtwitems,
      ),
      child: Column(
        children: [
          const Tbrandcard(showborder: false),
          const SizedBox(
            height: Tsizes.spacebtwitems,
          ),
          Row(
            children: images
                .map((image) => brandTopProductImage(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: Thelperfunctions.isdarkMode(context)
            ? Tcolors.darergrey
            : Tcolors.light,
        margin: const EdgeInsets.only(right: Tsizes.sm),
        padding: const EdgeInsets.all(Tsizes.sm),
        child: Image(
          image: NetworkImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
