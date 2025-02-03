import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/device/device_utilities.dart';

class TprogressRatingBar extends StatelessWidget {
  final String text;
  final double value;
  const TprogressRatingBar(
      {super.key, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TdeviceUtils.getScreenwidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: Tcolors.grey,
              valueColor: const AlwaysStoppedAnimation(Tcolors.primaryColor),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
