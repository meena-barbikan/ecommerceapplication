// ignore: file_names
import 'package:ecommerceapplication/common/widgets/layout/grid_layout.dart';
import 'package:ecommerceapplication/common/widgets/productcard/card/tproductcardvertical.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
import '../images/tbrandshowcase.dart';

class Tcategorytab extends StatelessWidget {
  const Tcategorytab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(Tsizes.defaultspace),
            child: Column(
              children: [
                // brands
                const Tbrandshowcase(
                  images: [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bOD0qtnxbqcD04pbaXCWXf-jM5zlOliXdQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bOD0qtnxbqcD04pbaXCWXf-jM5zlOliXdQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bOD0qtnxbqcD04pbaXCWXf-jM5zlOliXdQ&s"
                  ],
                ),
                const Tbrandshowcase(
                  images: [
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bOD0qtnxbqcD04pbaXCWXf-jM5zlOliXdQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bOD0qtnxbqcD04pbaXCWXf-jM5zlOliXdQ&s",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8bOD0qtnxbqcD04pbaXCWXf-jM5zlOliXdQ&s"
                  ],
                ),
                const SizedBox(
                  height: Tsizes.spacebtwitems,
                ), // products
                Tsectionheading(
                  title: "Show might Like",
                  onpressed: () {},
                ),
                const SizedBox(
                  height: Tsizes.spacebtwitems,
                ),
                GridLayoutview(
                    itemcount: 4,
                    itemBuilder: (_, index) => const Tproductcard()),
                const SizedBox(
                  height: Tsizes.spacebtwsections,
                ),
              ],
            ),
          ),
        ]);
  }
}
