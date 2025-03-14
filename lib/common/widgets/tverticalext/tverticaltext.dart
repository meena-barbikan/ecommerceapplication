import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/size.dart';

class Tverticaltext extends StatelessWidget {
  final String image, title;
  final Color textcolor;
  final Color? backgroundColor;
  final void Function()? onTap;
  const Tverticaltext(
      {super.key,
      required this.image,
      required this.title,
      required this.textcolor,
      this.backgroundColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Tsizes.spacebtwitems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(Tsizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (Thelperfunctions.isdarkMode(context)
                        ? Tcolors.black
                        : Tcolors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  //  image: NetworkImage(image),
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: (Thelperfunctions.isdarkMode(context)
                      ? Tcolors.light
                      : Tcolors.dark),
                ),
              ),
            ),
            const SizedBox(
              height: Tsizes.spacebtwitems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textcolor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tproducttitle extends StatelessWidget {
  final bool smallsize;
  final String text;
  final int maxlines;
  final TextAlign textAlign;
  const Tproducttitle(
      {super.key,
      this.smallsize = false,
      required this.text,
      this.maxlines = 2,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: smallsize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}

class TproductPrice extends StatelessWidget {
  final String text, currencySign;
  final int maxlines;
  final bool isLarge;
  final bool linethrough;
  const TproductPrice(
      {super.key,
      required this.text,
      this.maxlines = 1,
      this.isLarge = false,
      this.linethrough = false,
      this.currencySign = "\$"});

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + text,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: linethrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: linethrough ? TextDecoration.lineThrough : null),
    );
  }
}

class Tsectionheading extends StatelessWidget {
  final Color? textcolor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onpressed;
  const Tsectionheading(
      {super.key,
      this.textcolor,
      this.showActionButton = true,
      required this.title,
      this.buttonTitle = "viewall",
      this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textcolor),
        ),
        if (showActionButton)
          TextButton(onPressed: onpressed, child: Text(buttonTitle))
      ],
    );
  }
}

class TBrandtitle extends StatelessWidget {
  final String text;
  final int maxline;
  final TextAlign? textAlign;
  final Color? textcolor;
  final TextSizes brandTextsizes;

  const TBrandtitle(
      {super.key,
      required this.text,
      this.maxline = 1,
      this.textcolor,
      this.brandTextsizes = TextSizes.small,
      this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxline,
        style: brandTextsizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: textcolor)
            : brandTextsizes == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: textcolor)
                : brandTextsizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: textcolor)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: textcolor));
  }
}

class TBrandtitlewithVerfication extends StatelessWidget {
  final Color? textcolor, iconcolor;
  final TextAlign? textAlign;
  final TextSizes brandTextsizes;
  final int maxlines;
  final String title;
  const TBrandtitlewithVerfication({
    super.key,
    this.textcolor,
    this.iconcolor = Tcolors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextsizes = TextSizes.small,
    this.maxlines = 1,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandtitle(
          text: title,
          textcolor: textcolor,
          maxline: maxlines,
          textAlign: textAlign,
          brandTextsizes: brandTextsizes,
        )),
        const SizedBox(
          width: Tsizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconcolor,
          size: Tsizes.iconxs,
        ),
      ],
    );
  }
}
