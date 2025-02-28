import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';
import '../../tverticalext/tverticaltext.dart';
import 'card_item.dart';
import 'tproductquantity.dart';

class Tcarditems extends StatefulWidget {
  final bool showAddRemoveButtons;
  const Tcarditems({super.key, this.showAddRemoveButtons = false});

  @override
  State<Tcarditems> createState() => _TcarditemsState();
}

class _TcarditemsState extends State<Tcarditems> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(
        height: Tsizes.spacebtwsections,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const TCartitem(),
            if (widget.showAddRemoveButtons)
              const SizedBox(
                height: Tsizes.spacebtwitems,
              ),
            if (widget.showAddRemoveButtons)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      TproductquantitywithAddReoveButton(),
                    ],
                  ),
                  TproductPrice(text: "256"),
                ],
              )
          ],
        );
      },
    );
  }
}
