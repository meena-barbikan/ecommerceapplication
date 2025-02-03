import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';

class Tratingbarindicator extends StatelessWidget {
  final double rating;
  const Tratingbarindicator({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        itemCount: 5,
        itemBuilder: (_, __) => const Icon(
              Iconsax.star1,
              color: Tcolors.primaryColor,
            ));
  }
}
