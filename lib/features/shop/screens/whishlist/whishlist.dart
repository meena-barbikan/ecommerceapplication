import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/icon/circularicon.dart';
import 'package:ecommerceapplication/common/widgets/layout/grid_layout.dart';
import 'package:ecommerceapplication/common/widgets/productcard/card/tproductcardvertical.dart';
import 'package:ecommerceapplication/features/shop/screens/home/home.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Whishlist extends StatelessWidget {
  const Whishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          "WishList",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TcircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeView()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              GridLayoutview(
                  itemcount: 4, itemBuilder: (_, index) => const Tproductcard())
            ],
          ),
        ),
      ),
    );
  }
}
