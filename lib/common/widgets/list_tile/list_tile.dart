import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../images/t_circular_image.dart';

class Tuserprofile extends StatelessWidget {
  final String title, subtitle, images;
  final VoidCallback onPressed;

  const Tuserprofile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.images,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(
        subtitle,
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: Tcolors.white),
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Tcolors.white),
      ),
      trailing: IconButton(
          onPressed: () => onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: Tcolors.white,
          )),
      leading: TCircularImage(
        image: images,
        width: 50,
        height: 50,
        padding: 0,
        fit: BoxFit.fill,
      ),
    );
  }
}
