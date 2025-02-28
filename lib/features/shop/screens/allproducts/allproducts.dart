import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/productcard/card/tproductcard_horizontal.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/productcard/card/tproductcardvertical.dart';
import '../../../../common/widgets/productcard/sortable/sortable.dart';

class Allproducts extends StatelessWidget {
  const Allproducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppbar(
        title: Text("Popular Poducts"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: TsortableProducts(),
        ),
      ),
    );
  }
}
