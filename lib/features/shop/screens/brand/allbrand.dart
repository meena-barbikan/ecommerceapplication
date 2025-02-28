import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/productcard/sortable/sortable.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/features/shop/screens/brand/brand_products.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/layout/tbrandcard.dart';

class AllbrandScreen extends StatelessWidget {
  const AllbrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text("Brand"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              const Tsectionheading(title: "Brands"),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              GridLayoutview(
                itemcount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => Tbrandcard(
                  showborder: true,
                  tap: () => Get.to(() => BrandProducts()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
