import 'package:ecommerceapplication/features/shop/screens/home/home.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/color.dart';

class Tchip extends StatelessWidget {
  final String text;
  final bool selected;
  final void Function(bool)? onselected;
  const Tchip(
      {super.key, required this.text, required this.selected, this.onselected});

  @override
  Widget build(BuildContext context) {
    final isColor = Thelperfunctions.getColor(text) != null;
    print("$text: isColor = $isColor");
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onselected,
        avatar: isColor
            ? TcircularContainer(
                width: 50,
                height: 50,
                backgroundColor: Thelperfunctions.getColor(text)!,
              )
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,

        backgroundColor: isColor ? Thelperfunctions.getColor(text)! : null,
        // ignore: dead_code
        labelStyle: TextStyle(color: selected ? Tcolors.white : null),
      ),
    );
  }
}
