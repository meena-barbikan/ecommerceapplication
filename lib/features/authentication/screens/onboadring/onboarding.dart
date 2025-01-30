import 'package:ecommerceapplication/features/authentication/controllers/onboadring_controller/onboadring_controller.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/constants/text_string.dart';
import 'package:ecommerceapplication/utils/device/device_utilities.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    final controller = Get.put(OnboadringController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.onboardingcontroller,
            onPageChanged: (value) {
              controller.updatepageindicator(value);
            },
            children: const [
              Onboardingview(
                title: Ttexts.onboardingTitle1,
                subtitle: Ttexts.onboardingsubTitle1,
              ),
              Onboardingview(
                title: Ttexts.onboardingTitle2,
                subtitle: Ttexts.onboardingsubTitle2,
              ),
              Onboardingview(
                title: Ttexts.onboardingTitle3,
                subtitle: Ttexts.onboardingsubTitle3,
              ),
            ],
          ),
          Positioned(
            top: TdeviceUtils.getAppbarHeight(),
            right: Tsizes.defaultspace,
            child: TextButton(
              onPressed: () {
                controller.skippage();
              },
              child: const Text("Skip"),
            ),
          ),
          Positioned(
              bottom: TdeviceUtils.getBottomNavigationBarHeight() + 25,
              left: Tsizes.defaultspace,
              child: SmoothPageIndicator(
                  //onDotClicked: controller.dotCliked,
                  effect: ExpandingDotsEffect(
                      activeDotColor: dark ? Tcolors.light : Colors.black,
                      dotHeight: 6),
                  controller: controller.onboardingcontroller,
                  count: 3)),
          Positioned(
              right: Tsizes.defaultspace,
              bottom: TdeviceUtils.getBottomNavigationBarHeight(),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor:
                          dark ? Tcolors.primaryColor : Colors.black),
                  onPressed: () {
                    controller.nextpage();
                  },
                  child: const Icon(Iconsax.arrow_right_3)))
        ],
      ),
    );
  }
}

class Onboardingview extends StatelessWidget {
  final String title;
  final String subtitle;
  const Onboardingview(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
