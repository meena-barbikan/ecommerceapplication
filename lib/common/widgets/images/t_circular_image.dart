import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper.dart';

class TCircularImage extends StatelessWidget {
  final double width, padding;
  final double height;
  final String image;
  final Color? overlaycolor;
  final Color? backgroundcolor;
  final bool isNetworkImage;
  final BoxFit? fit;
  const TCircularImage(
      {super.key,
      this.width = 56,
      this.height = 56,
      required this.image,
      this.padding = Tsizes.sm,
      this.overlaycolor,
      this.backgroundcolor,
      this.isNetworkImage = true,
      this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundcolor ??
              (Thelperfunctions.isdarkMode(context)
                  ? Tcolors.black
                  : Tcolors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overlaycolor,
        ),
      ),
    );
  }
}
