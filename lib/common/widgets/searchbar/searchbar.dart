import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/device/device_utilities.dart';

class Searchbar extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final bool showbackgourndcolor, showborder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  const Searchbar({
    super.key,
    this.icon,
    this.text,
    this.showbackgourndcolor = true,
    this.showborder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: Tsizes.defaultspace),
  });

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TdeviceUtils.getScreenwidth(context),
          padding: const EdgeInsets.all(Tsizes.md),
          decoration: BoxDecoration(
              color: showbackgourndcolor
                  ? dark
                      ? Tcolors.dark
                      : Tcolors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(Tsizes.cardRadiusLg),
              border: showborder ? Border.all(color: Tcolors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: Tcolors.grey,
              ),
              const SizedBox(
                width: Tsizes.spacebtwitems,
              ),
              Text(text ?? "", style: Theme.of(context).textTheme.bodySmall!)
            ],
          ),
        ),
      ),
    );
  }
}

// section heading
// ignore: camel_case_types
class sectionheading extends StatelessWidget {
  final Color? textcolor;
  final bool showActionButton;
  final String title, buttontitle;
  final void Function()? onPressed;
  const sectionheading(
      {super.key,
      this.textcolor,
      this.showActionButton = true,
      required this.title,
      required this.buttontitle,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textcolor),
        ),
        if (showActionButton)
          TextButton(onPressed: () {}, child: Text(buttontitle))
      ],
    );
  }
}

class TroundedImages extends StatelessWidget {
  final String image;
  final bool applyimageradius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final double borderRadius;
  final bool isNetworkImage;
  final double? width, height;
  const TroundedImages(
      {super.key,
      required this.image,
      this.applyimageradius = true,
      this.border,
      this.backgroundColor = Tcolors.light,
      this.fit = BoxFit.contain,
      this.padding,
      this.onPressed,
      this.borderRadius = 25,
      this.isNetworkImage = true,
      this.width = 350,
      this.height = 350});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyimageradius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: BoxFit.contain,
            image: NetworkImage(image),
          ),
          // image: isNetworkImage
          //     ? NetworkImage(image)
          //     : AssetImage(image) as ImageProvider),
        ),
      ),
    );
  }
}

class TRoundedContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color bordercolor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const TRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = Tsizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.bordercolor = Tcolors.borderprimary,
      this.backgroundColor = Tcolors.white,
      this.padding,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: bordercolor) : null),
      child: child,
    );
  }
}
