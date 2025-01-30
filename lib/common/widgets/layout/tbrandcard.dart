import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/size.dart';
import '../images/t_circular_image.dart';
import '../searchbar/searchbar.dart';
import '../tverticalext/tverticaltext.dart';

class Tbrandcard extends StatelessWidget {
  final bool showborder;
  final void Function()? tap;
  const Tbrandcard({super.key, required this.showborder, this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(Tsizes.sm),
        showBorder: showborder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            const Flexible(
              child: TCircularImage(
                isNetworkImage: true,
                // overlaycolor: Thelperfunctions.isdarkMode(context)
                //     ? Tcolors.white
                //     : Tcolors.black,
                backgroundcolor: Colors.transparent,
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR445mQl6TIboTP_GvC18V22cdI76-23w7p1g&s',
              ),
            ),
            const SizedBox(
              height: Tsizes.spacebtwitems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandtitlewithVerfication(
                    title: "Nike",
                    brandTextsizes: TextSizes.large,
                  ),
                  Text("256, products",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
