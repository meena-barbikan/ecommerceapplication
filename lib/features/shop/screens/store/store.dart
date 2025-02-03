import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/appbar/tabbar.dart';
import 'package:ecommerceapplication/common/widgets/icon/circularicon.dart';
import 'package:ecommerceapplication/common/widgets/layout/tbrandcard.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/Tcategorytab.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/searchbar/searchbar.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppbar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TcardCounterIcon(
              text: "2",
              onpressed: () {},
              icon: Iconsax.shopping_bag,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: Thelperfunctions.isdarkMode(context)
                        ? Tcolors.black
                        : Tcolors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(Tsizes.defaultspace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: Tsizes.spacebtwitems,
                          ),
                          const Searchbar(
                            text: "Search in Store",
                            showborder: true,
                            icon: Iconsax.search_normal,
                            showbackgourndcolor: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: Tsizes.spacebtwsections,
                          ),

                          // feature brands
                          Tsectionheading(
                            title: "Feature Brands",
                            onpressed: () {},
                          ),
                          const SizedBox(
                            height: Tsizes.spacebtwitems / 1.5,
                          ),
                          GridLayoutview(
                            mainAxisExtent: 80,
                            itemcount: 4,
                            itemBuilder: (_, index) {
                              return const Tbrandcard(showborder: false);
                            },
                          ),
                        ],
                      ),
                    ),
                    bottom: const Ttabbar(tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Clothes"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      )
                    ]))
              ];
            },
            body: const TabBarView(children: [
              Tcategorytab(),
              Tcategorytab(),
              Tcategorytab(),
              Tcategorytab(),
              Tcategorytab(),
            ])),
      ),
    );
  }
}
