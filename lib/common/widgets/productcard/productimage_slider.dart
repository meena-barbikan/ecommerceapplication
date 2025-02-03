import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../features/shop/screens/home/home.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../appbar/appbar.dart';
import '../icon/circularicon.dart';
import '../searchbar/searchbar.dart';

class TProductimageSlider extends StatelessWidget {
  final bool dark;
  const TProductimageSlider({super.key, required this.dark});

  @override
  Widget build(BuildContext context) {
    return TcurvedWidget(
      child: Container(
        color: dark ? Tcolors.darergrey : Tcolors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 300,
              child: Padding(
                padding: EdgeInsets.all(Tsizes.productimageradius * 2),
                child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd_GlQx1e2j0WQ4ogcweWvfE0-BCNQ7EGbHQ&s"),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: Tsizes.defaultspace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return TroundedImages(
                      padding: const EdgeInsets.all(Tsizes.sm),
                      width: 80,
                      border: Border.all(color: Tcolors.primaryColor),
                      backgroundColor: dark ? Tcolors.dark : Tcolors.white,
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNfGZxN8zwZObQxW3HUhLs-Fl8wuAt7p-b7Q&s',
                      isNetworkImage: true,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: Tsizes.spacebtwitems,
                    );
                  },
                  itemCount: 4,
                ),
              ),
            ),
            const TAppbar(
              showBackArrow: true,
              actions: [
                TcircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
