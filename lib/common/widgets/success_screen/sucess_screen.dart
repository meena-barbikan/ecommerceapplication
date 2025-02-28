import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/constants/text_string.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class SucessScreenView extends StatefulWidget {
  final String image, title, subtitle;
  final VoidCallback onPressed;
  const SucessScreenView(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  @override
  State<SucessScreenView> createState() => _SucessScreenState();
}

class _SucessScreenState extends State<SucessScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Image(
                image: NetworkImage(widget.image),
                width: Thelperfunctions.getScreenwidth() * 0.6,
              ),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
              Text(
                widget.subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: widget.onPressed, child: Text("Continue")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
