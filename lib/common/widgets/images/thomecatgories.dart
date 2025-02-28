import 'package:ecommerceapplication/features/shop/screens/subcategory/subcategory.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/color.dart';
import '../tverticalext/tverticaltext.dart';

class Thomecatgories extends StatelessWidget {
  const Thomecatgories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Tverticaltext(
            image: 'assets/images/jerryimage.png',
            title: 'Shoes Category ',
            textcolor: Tcolors.white,
            onTap: () => Get.to(() => const SubcategoryScreen()),
          );
        },
      ),
    );
  }
}
