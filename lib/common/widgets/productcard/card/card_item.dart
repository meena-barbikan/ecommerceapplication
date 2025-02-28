import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper.dart';
import '../../searchbar/searchbar.dart';
import '../../tverticalext/tverticaltext.dart';

class TCartitem extends StatelessWidget {
  const TCartitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TroundedImages(
          image:
              "data:image/jpeg;base64,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",
          width: 60,
          height: 60,
          backgroundColor: Thelperfunctions.isdarkMode(context)
              ? Tcolors.darergrey
              : Tcolors.light,
        ),
        const SizedBox(
          width: Tsizes.spacebtwitems,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandtitlewithVerfication(
              title: "Nike",
            ),
            const Flexible(
              child: Tproducttitle(
                text: "Black Sports Shoes ",
                maxlines: 1,
              ),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Color", style: Theme.of(context).textTheme.bodySmall),
              const TextSpan(text: ""),
              TextSpan(
                  text: "Green", style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: ""),
              TextSpan(
                  text: "Size", style: Theme.of(context).textTheme.bodySmall),
              const TextSpan(text: ""),
              TextSpan(
                  text: "Uk 08", style: Theme.of(context).textTheme.bodyLarge)
            ]))
          ],
        )
      ],
    );
  }
}
