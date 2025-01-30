import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';

class GridLayoutview extends StatelessWidget {
  final double mainAxisExtent;
  final int itemcount;
  final Widget? Function(BuildContext, int) itemBuilder;
  const GridLayoutview(
      {super.key,
      required this.mainAxisExtent,
      required this.itemcount,
      required this.itemBuilder});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemcount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: Tsizes.gridviewspacing,
            crossAxisSpacing: Tsizes.gridviewspacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
