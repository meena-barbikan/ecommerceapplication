import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/checkout/payment_amount_section.dart';
import 'package:ecommerceapplication/common/widgets/productcard/card/tcarditems.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/features/authentication/screens/signup/succes_screen.dart';
import 'package:ecommerceapplication/navigation_menu.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/checkout/billing_address_section.dart';
import '../../../../common/widgets/checkout/billing_payment_section.dart';
import '../../../../common/widgets/productcard/card/coupon_card.dart';
import '../../../../common/widgets/success_screen/sucess_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Scaffold(
      appBar: TAppbar(
        title: Text("Order Review",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              const Tcarditems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              const CouponCard(),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(Tsizes.md),
                backgroundColor: dark ? Tcolors.black : Tcolors.white,
                child: const Column(
                  children: [
                    BillingamountSection(),
                    SizedBox(
                      height: Tsizes.spacebtwitems,
                    ),
                    Divider(),
                    SizedBox(
                      height: Tsizes.spacebtwitems,
                    ),
                    BillingpaymentSection(),
                    SizedBox(
                      height: Tsizes.spacebtwitems,
                    ),
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Tsizes.defaultspace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SucessScreenView(
                  image:
                      'data:image/png;base64,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',
                  title: "Paymnet Success!",
                  subtitle: "Your item will be shipped soon!",
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text("Checkout ${256.0} ")),
      ),
    );
  }
}
