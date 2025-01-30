import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';

class TcircularIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final Color? backgroundcolor;
  final VoidCallback? onPressed;
  final double? width, height, size;
  const TcircularIcon(
      {super.key,
      required this.icon,
      this.color,
      this.backgroundcolor,
      this.onPressed,
      this.width,
      this.height,
      this.size});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundcolor != null
              ? backgroundcolor!
              : dark
                  ? Tcolors.black.withOpacity(0.9)
                  : Tcolors.white.withOpacity(0.9)),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}

class TcardCounterIcon extends StatelessWidget {
  final IconData? icon;
  final void Function()? onpressed;
  final String text;
  const TcardCounterIcon(
      {super.key, this.icon, this.onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: dark ? Tcolors.white : Tcolors.black,
            // Iconsax.shopping_bag,
            // color: Tcolors.white,
          )),
      Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: dark ? Tcolors.white : Tcolors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: dark ? Tcolors.black : Tcolors.white),
              textAlign: TextAlign.center,
            ),
          )),
    ]);
  }
}
