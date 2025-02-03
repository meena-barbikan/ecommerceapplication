import 'package:flutter/material.dart';

class TproductpriceText extends StatelessWidget {
  final int maxlines;
  final bool isLarge;
  final bool lineThrough;
  final String cureencysign, price;
  const TproductpriceText(
      {super.key,
      this.maxlines = 1,
      this.isLarge = false,
      this.lineThrough = false,
      this.cureencysign = '\$',
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(cureencysign + price,
        maxLines: maxlines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleSmall!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}
