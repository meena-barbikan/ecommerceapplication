import 'package:ecommerceapplication/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/size.dart';

class SuccesScreen extends StatefulWidget {
  const SuccesScreen({super.key});

  @override
  State<SuccesScreen> createState() => _SuccesScreenState();
}

class _SuccesScreenState extends State<SuccesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: Tsizes.appbarheight,
              left: Tsizes.defaultspace,
              bottom: Tsizes.defaultspace,
              right: Tsizes.defaultspace),
          child: Column(
            children: [
              Text(
                "Your account successfully created",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              Text(
                "welcome to Your Ulimate Shopping Destination Ypur Account is Created. unleash the Joy pf seamless Online Shopping",
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
                      Get.to(() => const loginView());
                    },
                    child: const Text("continue")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
