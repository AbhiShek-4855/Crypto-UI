import 'package:crypto_ui/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_icon.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height : height /5
        ),
        AppIcon.introImage1().marginSymmetric(horizontal: 10),
        Container(
            height : height /10
        ),
        Text("Trade Crypto",style: AppTextStyle.boldText(context,size: 27),).marginOnly(left: 32),
        Container(
            height : height /50
        ),
        Text("Massive gains of up to 1000% in prices and\nthe wild swings or volatility characterize the\ncrypto markets.",style: AppTextStyle.introSmallText(context),).marginSymmetric(horizontal: 32)
      ],
    );
  }
}
