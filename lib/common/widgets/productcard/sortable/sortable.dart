import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/size.dart';
import '../../layout/grid_layout.dart';
import '../card/tproductcardvertical.dart';

class TsortableProducts extends StatelessWidget {
  const TsortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            "Name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity"
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: Tsizes.spacebtwsections,
        ),
        GridLayoutview(
          itemcount: 14,
          itemBuilder: (_, index) => Tproductcard(),
        )
      ],
    );
  }
}
