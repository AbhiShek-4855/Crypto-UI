import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/app_icon.dart';
import '../../../theme/app_text_style.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({Key? key}) : super(key: key);

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
        AppIcon.introImage3().marginSymmetric(horizontal: 10),
        Container(
            height : height /10
        ),
        Text("Learn Crypto",style: AppTextStyle.boldText(context,size: 27),).marginOnly(left: 32),
        Container(
            height : height /50
        ),
        Text("Crypto is one kind of trade and its requires\nlearning. We collect expert thoughts and\npublish them on our app. Which helps you to\nbe benefited.",style: AppTextStyle.introSmallText(context),).marginSymmetric(horizontal: 32)
      ],
    );
  }
}
