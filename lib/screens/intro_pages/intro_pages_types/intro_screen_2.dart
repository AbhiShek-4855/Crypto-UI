import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_icon.dart';
import '../../../theme/app_text_style.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

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
        AppIcon.introImage2().marginSymmetric(horizontal: 10),
        Container(
            height : height /10
        ),
        Text("Exchange Coins",style: AppTextStyle.boldText(context,size: 27),).marginOnly(left: 32),
        Container(
            height : height /50
        ),
        Text("Through our app, you can exchange coins to\nanother wallet easily. There is no hidden fees,\nour system is crystal clear. ",style: AppTextStyle.introSmallText(context),).marginSymmetric(horizontal: 32)
      ],
    );
  }
}
