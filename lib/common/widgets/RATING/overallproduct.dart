import 'package:flutter/material.dart';

import 'ratingbar.dart';

class Overallproduct extends StatelessWidget {
  const Overallproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.8",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TprogressRatingBar(
                value: 1.0,
                text: "5",
              ),
              TprogressRatingBar(
                value: 0.8,
                text: "4",
              ),
              TprogressRatingBar(
                value: 0.6,
                text: "3",
              ),
              TprogressRatingBar(
                value: 0.2,
                text: "1",
              ),
            ],
          ),
        )
      ],
    );
  }
}
