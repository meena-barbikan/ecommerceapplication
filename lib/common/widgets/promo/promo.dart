import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapplication/features/shop/controllers/home/home_controller.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../features/shop/screens/home/home.dart';
import '../../../utils/constants/size.dart';
import '../searchbar/searchbar.dart';

// ignore: must_be_immutable
class Tpromoslide extends StatelessWidget {
  List<String> banners;
  Tpromoslide({super.key, required this.banners});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map((url) => TroundedImages(
                    image: url,
                  ))
              .toList(),
          // items: const [
          //   TroundedImages(
          //     borderRadius: Tsizes.md,
          //     image:
          //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s",
          //   ),
          //   TroundedImages(
          //     borderRadius: Tsizes.md,
          //     image:
          //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s",
          //   ),
          //   TroundedImages(
          //     borderRadius: Tsizes.md,
          //     image:
          //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s",
          //   ),
          // ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              controller.updateIndex(index);
            },
          ),
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                TcircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselindex.value == i
                      ? Tcolors.primaryColor
                      : Tcolors.grey,
                  margin: const EdgeInsets.only(right: 10),
                )
            ],
          ),
        )
      ],
    );
  }
}
