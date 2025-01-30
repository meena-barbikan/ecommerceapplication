import 'package:ecommerceapplication/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final dark = Thelperfunctions.isdarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Iconsax.arrow_left,
          ),
          color: dark ? Colors.white : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's create Your account",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "First name",
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: Tsizes.spacebtwinputfields,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Last name",
                            prefixIcon: Icon(Iconsax.user),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwinputfields,
                  ),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwinputfields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "email", prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwinputfields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "PhoneNo", prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwinputfields,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwinputfields,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {})),
                      const SizedBox(
                        width: Tsizes.spacebtwitems,
                      ),
                      Text.rich(TextSpan(children: [
                        const TextSpan(
                            text: "isAgreeTo", style: TextStyle(fontSize: 12)),
                        TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? Tcolors.white : Tcolors.primaryColor,
                              color:
                                  dark ? Tcolors.white : Tcolors.primaryColor,
                            )),
                        //  Theme.of(context)
                        //     .textTheme
                        //     .bodyMedium!
                        //     .apply(
                        //         color: dark
                        //             ? Tcolors.white
                        //             : Tcolors.primaryColor,
                        //         decoration: TextDecoration.underline,
                        //         decorationColor: dark
                        //             ? Tcolors.white
                        //             : Tcolors.primaryColor)),
                        TextSpan(
                          text: "and",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                            text: "TermsofUse",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              decorationColor:
                                  dark ? Tcolors.white : Tcolors.primaryColor,
                              color:
                                  dark ? Tcolors.white : Tcolors.primaryColor,
                            )),
                        // Theme.of(context).textTheme.bodyMedium!.apply(
                        //     color: dark
                        //         ? Tcolors.white
                        //         : Tcolors.primaryColor,
                        //     decoration: TextDecoration.underline,
                        //     decorationColor: dark
                        //         ? Tcolors.white
                        //         : Tcolors.primaryColor)),
                      ]))
                    ],
                  ),
                  const SizedBox(
                    height: Tsizes.spacebtwsections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const VerifyEmail());
                      },
                      child: const Text("Create Account"),
                    ),
                  ),
                ],
              )),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
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
