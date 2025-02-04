import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/device/device_utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/RATING/Tratingbarindicator.dart';
import '../../../../../common/widgets/RATING/overallproduct.dart';
import '../../../../../common/widgets/RATING/ratingbar.dart';
import '../../../../../common/widgets/RATING/user_review_card.dart';

class Productreview extends StatelessWidget {
  const Productreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          "Reviews & Ratings",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are form people who use the same type of device that you use"),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),

              // over all rating
              const Overallproduct(),
              const Tratingbarindicator(
                rating: 3.5,
              ),
              Text(
                "12,611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              const TuserReviewCard(),
              const TuserReviewCard(),
              const TuserReviewCard(),
              const TuserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
