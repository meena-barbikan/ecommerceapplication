import 'package:ecommerceapplication/common/widgets/searchbar/searchbar.dart';
import 'package:ecommerceapplication/common/widgets/tverticalext/tverticaltext.dart';
import 'package:ecommerceapplication/utils/constants/color.dart';
import 'package:ecommerceapplication/utils/constants/size.dart';
import 'package:ecommerceapplication/utils/helpers/helper.dart';
import 'package:flutter/material.dart';

class BillingpaymentSection extends StatefulWidget {
  const BillingpaymentSection({super.key});

  @override
  State<BillingpaymentSection> createState() => _BillingAddressSectionState();
}

class _BillingAddressSectionState extends State<BillingpaymentSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tsectionheading(
          title: "Payment Method",
          buttonTitle: "change",
          // showActionButton: true,
          onpressed: () {},
        ),
        const SizedBox(
          height: Tsizes.spacebtwitems / 2,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: Thelperfunctions.isdarkMode(context)
                  ? Tcolors.light
                  : Tcolors.white,
              padding: const EdgeInsets.all(Tsizes.sm),
              child: const Image(
                image: NetworkImage(
                    "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAAAq1BMVEX///8lO4AXm9cbNH3Mz9wAmNYlNHsVMHvN4/Mbks1yt+F+hqoiOX8WntoAldUAktTZ2+Xw8fUAGnPm6O7S1eEAJnf3+/3w9/vW6PUwP4FDU4yEi668wNALK3mZnbmip8BeaJhRX5IADnAAA24AHnOvtMl1f6ZncJw8TIgzRYUkRYfI1+YiV5cjcKxyeKIlLHVir9611+4XfLqjz+sbZaSFvOOTxeZHptsAi9IL1iIwAAADAUlEQVR4nO2Zi1LiMBSGm5S21E1TylUugoiIsHVBBfH9n2wRcUxSS9OZPafszPme4Jtc/v4ndRyCIAiCIAiCIAiCIAiCIAiC+I9p1XJoN5KqnBp9NxcxGNYqERt1RC7MvWkOxhVoTTrsLG4QTLrYUsOb81KMieZtC1lq6hZJHVarM8KVCkSxFBMBqlX3zsLpYDWrIUq1ZlZSTPQRz9Xo3k6KBQM8qUnh5fuiOUeTerC4fKcNXKJt4MJainWwliqZ2iTCaan6SFKtR3spdtfAkWq7JaRuxjhSNdtE+MBd4EhNykiJKU6LKe4IqtQjTijYdIRvqSXOSS9zzg/gSFl+jlFXyrYjnKRWvzGkas1yUnEdQcq+Ixyl0shDsBoGZaT8p8iTPXCpP2USga1Dzr0N9LyV3JaKqVXEOZfPwFKtQZmY8l8+pLgElmqUis4VPwK9VLWCkV1j/blQ3LuClZqX6Ah++unE+R72ApboCGIVnpy4vAaVWtjH1Dr8WigOHOvC9qAL9u3EY9iTfm8p5atOPH6FdEosHzfWKVecgFfKamoQPnuJVCfgMzUvunxC+CI1lA5BBXr7Mh1B+DosfQq5ocQ92JwyHzf8bagRReYiHaV2kE5d83Hj9MUtIAbdvUxHEDZS3h7SKdMRtITMl4LN87Y5Nay8Yif5BuqU7Qir4oUC3jzHGRsxJdJCKQlcWw5TgxFT/rZISu7B/9IsjYN+mKDOb937G/yfI/Ocr88mgvQ2sOXuSJKRClUJT0XGfIcxsTttc2oQqlN0pbB7vkb65Wd2BKEmAvTIksfYuHwiVTcP9Kubj1lctESQoJU3l2xHUBMB5SEqS2K+wWrFJYZ/8fmJljFf6R0hrsTJaWTeEdSY8qqRGmWKi5oIm2qk5rNAwRW+KiUrSoRk/EvhYZtqlw/6uc6Kuj64yGoSweBVapUAdt60ZadLgRdMG7p7bWbwNhchpa1TZR1Bp/euS1WUCDo9qRXNy0gEp1dXuYi7RxAEQRAEQRAEQRAEQRAEQRD/lr8bjTerK6a1GAAAAABJRU5ErkJggg=="),
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
      ],
    );
  }
}
