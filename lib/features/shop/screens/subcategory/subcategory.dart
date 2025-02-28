import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/productcard/card/tproductcard_horizontal.dart';
import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SubcategoryScreen extends StatelessWidget {
  const SubcategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              const TroundedImages(
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXvISWV--yWSsHVx9MeoMlK8a_iawaZDX9Bg&s",
                width: double.infinity,
                // height: null,
                applyimageradius: true,
              ),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              Column(
                children: [
                  Tsectionheading(
                    title: "Sports shirts",
                    onpressed: () {},
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwitems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              width: Tsizes.spacebtwitems,
                            ),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const TproductcardHorizontal();
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
