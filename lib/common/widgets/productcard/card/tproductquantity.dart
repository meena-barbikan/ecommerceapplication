import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper.dart';
import '../../icon/circularicon.dart';

class TproductquantitywithAddReoveButton extends StatelessWidget {
  const TproductquantitywithAddReoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TcircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: Tsizes.md,
          color: Thelperfunctions.isdarkMode(context)
              ? Tcolors.white
              : Tcolors.black,
          backgroundcolor: Thelperfunctions.isdarkMode(context)
              ? Tcolors.darergrey
              : Tcolors.light,
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
        TcircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: Tsizes.md,
            color: Thelperfunctions.isdarkMode(context)
                ? Tcolors.white
                : Tcolors.black,
            backgroundcolor: Tcolors.primaryColor),
      ],
    );
  }
}
