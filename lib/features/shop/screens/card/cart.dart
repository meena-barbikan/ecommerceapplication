import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/productcard/card/tcarditems.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(Tsizes.defaultspace),
        child: Tcarditems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Tsizes.defaultspace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text("Checkout ${256.0} ")),
      ),
    );
  }
}
