import 'package:ecommerceapplication/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapplication/common/widgets/layout/tbrandcard.dart';
import 'package:ecommerceapplication/common/widgets/productcard/sortable/sortable.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppbar(
        title: Text("Nike"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Tsizes.defaultspace),
          child: Column(
            children: [
              Tbrandcard(showborder: true),
              SizedBox(
                height: Tsizes.spacebtwsections,
              ),
              TsortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
