import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatefulWidget {
  const BillingAddressSection({super.key});

  @override
  State<BillingAddressSection> createState() => _BillingAddressSectionState();
}

class _BillingAddressSectionState extends State<BillingAddressSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tsectionheading(
          title: "Shipping Address",
          buttonTitle: "Chnage",
          onpressed: () {},
        ),
        Text(
          "Coding with T",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: Tsizes.spacebtwitems,
            ),
            Text(
              "+91 12345 67890",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: Tsizes.spacebtwitems,
            ),
            Expanded(
              child: Text(
                "South Liana, Maine 87695, USA",
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
