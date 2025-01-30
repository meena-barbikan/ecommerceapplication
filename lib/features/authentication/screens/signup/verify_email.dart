import 'package:ecommerceapplication/features/authentication/screens/login/login.dart';
import 'package:ecommerceapplication/features/authentication/screens/signup/succes_screen.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const loginView()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              Text(
                "Verify Your Email Address",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              Text(
                "support@flutter.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              Text(
                "congratulations! your Account A waits; verify Your Email to start Shopping and Experience a World of Unrivaled Deals and Personalized Offers",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const SuccesScreen());
                    },
                    child: const Text("continue")),
              ),
              const SizedBox(height: Tsizes.spacebtwitems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text("resend Email")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
