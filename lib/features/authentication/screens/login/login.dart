// ignore_for_file: camel_case_types

import 'package:ecommerceapplication/features/authentication/screens/signup/signup.dart';
import 'package:ecommerceapplication/navigation_menu.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../forgotpassword/forgorpasswrodview.dart';

class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: Tsizes.appbarheight,
            left: Tsizes.defaultspace,
            bottom: Tsizes.defaultspace,
            right: Tsizes.defaultspace,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: Tsizes.appbarheight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back,",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: Tsizes.sm,
                    ),
                    Text(
                      "Discover Limitless Choices and Unmatched \nConvenience.,",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Tsizes.spacebtwsections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Iconsax.direct_right)),
                    ),
                    const SizedBox(
                      height: Tsizes.spacebtwinputfields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Password",
                          suffixIcon: Icon(Iconsax.eye_slash),
                          prefixIcon: Icon(Iconsax.password_check)),
                    ),
                    const SizedBox(
                      height: Tsizes.spacebtwinputfields / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text("Remeber me")
                          ],
                        ),
                        // forgotpassword,

                        TextButton(
                            onPressed: () {
                              Get.to(() => const Forgorpasswrodview());
                            },
                            child: const Text("forgotpassword")),
                      ],
                    ),
                    const SizedBox(
                      height: Tsizes.spacebtwsections,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const NavigationMenu());
                            },
                            child: const Text("SignIn"))),
                    const SizedBox(
                      height: Tsizes.spacebtwitems,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {
                              Get.to(() => const Signup());
                            },
                            child: const Text("create Account"))),
                    const SizedBox(
                      height: Tsizes.spacebtwsections,
                    ),
                  ],
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? Tcolors.darergrey : Tcolors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    "Or sign in with",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? Tcolors.darergrey : Tcolors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 5,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              // footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Tcolors.grey,
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                            width: Tsizes.iconmd,
                            height: Tsizes.iconmd,
                            image: AssetImage("assets/images/google.png"))),
                  ),
                  const SizedBox(
                    width: Tsizes.spacebtwitems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Tcolors.grey,
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                            width: Tsizes.iconlg,
                            height: Tsizes.iconlg,
                            image: AssetImage("assets/images/fackbook.png"))),
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
