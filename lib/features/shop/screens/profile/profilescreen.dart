import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/images/t_circular_image.dart';
import 'package:ecommerceapplication/common/widgets/list_tile/profile_menu.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppbar(
        title: Text(
          "Profile",
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              // profile
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: "",
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              const Tsectionheading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              ProfileMenu(
                title: "NAME",
                value: "SelvaMeena",
                onPressed: () {},
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              ProfileMenu(
                title: "UserId",
                value: "45689",
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                title: "E-mail",
                value: "selvameena",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone Number",
                value: "+91-1234567890",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gendar",
                value: "Female",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date of Birth",
                value: "10 Oct 2002",
                onPressed: () {},
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Close Account",
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
