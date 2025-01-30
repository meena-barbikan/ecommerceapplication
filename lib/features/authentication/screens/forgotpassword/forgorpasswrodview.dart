import 'package:ecommerceapplication/features/authentication/screens/forgotpassword/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/size.dart';

class Forgorpasswrodview extends StatefulWidget {
  const Forgorpasswrodview({super.key});

  @override
  State<Forgorpasswrodview> createState() => _ForgorpasswrodviewState();
}

class _ForgorpasswrodviewState extends State<Forgorpasswrodview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Tsizes.defaultspace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: Tsizes.spacebtwitems,
            ),
            Text(
              "Don't worry sometimes people can forget too, enter your email and we will send you a password reset link",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: Tsizes.spacebtwsections * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Email", prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: Tsizes.spacebtwsections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => const Resetpassword());
                    },
                    child: const Text("suubmit"))),
          ],
        ),
      ),
    );
  }
}
