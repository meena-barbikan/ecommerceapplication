import 'package:ecommerceapplication/common/widgets/RATING/Tratingbarindicator.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class TuserReviewCard extends StatelessWidget {
  const TuserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpS9_JONefmXEpCdgLmpNoGBazz4tX3SFSvw&s"),
                ),
                const SizedBox(
                  width: Tsizes.spacebtwitems,
                ),
                Text("Jonh Doe", style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems,
        ),
        Row(
          children: [
            const Tratingbarindicator(rating: 4),
            const SizedBox(
              width: Tsizes.spacebtwitems,
            ),
            Text(
              "01 Nov 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems,
        ),
        const ReadMoreText(
          "The User interface of the app is quite intuitive. I was able to Navigate and make Purchases seamlessly.Great Job!",
          trimLines: 2,
          trimCollapsedText: "show more",
          trimExpandedText: "show less",
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Tcolors.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Tcolors.primaryColor),
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems,
        ),
        TRoundedContainer(
          backgroundColor: dark ? Tcolors.darergrey : Tcolors.grey,
          child: Padding(
            padding: EdgeInsets.all(Tsizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "T's Stroe",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 Nov 2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: Tsizes.spacebtwitems,
                ),
                const ReadMoreText(
                  "The User interface of the app is quite intuitive. I was able to Navigate and make Purchases seamlessly.Great Job!",
                  trimLines: 2,
                  trimCollapsedText: "show more",
                  trimExpandedText: "show less",
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Tcolors.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Tcolors.primaryColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems,
        )
      ],
    );
  }
}
