import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';

class BillingamountSection extends StatefulWidget {
  const BillingamountSection({super.key});

  @override
  State<BillingamountSection> createState() => _BillingamountSectionState();
}

class _BillingamountSectionState extends State<BillingamountSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$256.0",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge)
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$6.0", style: Theme.of(context).textTheme.labelLarge)
          ],
        )
      ],
    );
  }
}
