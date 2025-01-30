import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
