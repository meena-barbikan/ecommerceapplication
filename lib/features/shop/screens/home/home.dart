import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/productcard/card/tproductcardvertical.dart';
import 'package:ecommerceapplication/common/widgets/promo/promo.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';

import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/icon/circularicon.dart';
import '../../../../common/widgets/images/thomecatgories.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/searchbar/searchbar.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool ishowAction = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TprimaryCurved(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TAppbar(
                    title: Column(
                      children: [
                        Text(
                          "Good for Shopping",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: Tcolors.grey),
                        ),
                        Text(
                          "Selvameena",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Tcolors.white),
                        )
                      ],
                    ),
                    actions: [
                      TcardCounterIcon(
                        text: "2",
                        onpressed: () {},
                        icon: Iconsax.shopping_bag,
                      ),
                      // Badge(
                      //     label: const Text("2"),
                      //     backgroundColor: Tcolors.black,
                      //     child: IconButton(
                      //         onPressed: () {},
                      //         icon: const Icon(
                      //           Iconsax.shopping_bag,
                      //           color: Tcolors.white,
                      //         )))
                    ],
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwsections,
                  ), //  search bar
                  const Searchbar(
                    icon: (Iconsax.search_normal),
                    text: "Search in Store",
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwsections,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: Tsizes.defaultspace),
                    child: Column(
                      children: [
                        sectionheading(
                          title: "Popular Categories",
                          buttontitle: "View all",
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: Tsizes.spacebtwitems,
                        ),
                        Thomecatgories(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwsections,
                  ),
                ],
              ),
            ),
            // body
            // Padding(
            //   padding: const EdgeInsets.all(Tsizes.defaultspace),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(Tsizes.md)),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(Tsizes.md),
            //       child: const Image(
            //           fit: BoxFit.fill,
            //           image: NetworkImage(
            //               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s")),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(Tsizes.defaultspace),
              child: Tpromoslide(
                banners: const [
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtNGD4AMEkmeuhBehw4c1m7B35CWOCewn17A&s",
                ],
              ),
            ),
            const SizedBox(
              height: Tsizes.spacebtwsections,
            ),
            Padding(
              padding: const EdgeInsets.only(left: Tsizes.spacebtwitems),
              child: Tsectionheading(
                title: "Popular Products",
                onpressed: () {},
              ),
            ),
            const SizedBox(
              height: Tsizes.spacebtwitems,
            ),
            GridLayoutview(
              mainAxisExtent: 288,
              itemcount: 4,
              itemBuilder: (_, index) => const Tproductcard(),
            )
          ],
        ),
      ),
    );
  }
}

class TcustomCurvedEdgets extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstcurve = Offset(0, size.height - 20);
    final lastcurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);
    final secondfirstcurve = Offset(0, size.height - 20);
    final secondLastcurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfirstcurve.dx, secondfirstcurve.dy,
        secondLastcurve.dx, secondLastcurve.dy);
    final thirdcurve = Offset(size.width, size.height - 20);
    final thirdlastcurve = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdcurve.dx, thirdcurve.dy, thirdlastcurve.dx, thirdlastcurve.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TcircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final double? child;
  final EdgeInsets? margin;
  final Color backgroundColor;
  const TcircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.child,
      this.backgroundColor = Tcolors.white,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(radius)),
    );
  }
}

class TprimaryCurved extends StatelessWidget {
  final Widget child;
  const TprimaryCurved({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return TcurvedWidget(
      child: Container(
        color: Tcolors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: TcircularContainer(
                backgroundColor: Tcolors.textwhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TcircularContainer(
                backgroundColor: Tcolors.textwhite.withOpacity(0.1),
              ),
            ),
            // Positioned.fill(
            //   child: child,
            // ),
            child
          ],
        ),
      ),
    );
  }
}

class TcurvedWidget extends StatelessWidget {
  final Widget child;
  const TcurvedWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TcustomCurvedEdgets(),
      child: child,
    );
  }
}
