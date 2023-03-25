import 'package:crypto_ui/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_text_style.dart';


class AppButton extends StatelessWidget {
  String title;
  VoidCallback onTap;
  Color? color;
  Color? textColor;
  AppButton({Key? key,required this.title,required this.onTap,this.color,this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? context.theme.primaryColor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text(title,style: AppTextStyle.buttonTextStyle(context,color: textColor)),
        ),
      ).marginSymmetric(horizontal: 24),
    );
  }
}


class AppButton2 extends StatelessWidget {
  String title;
  VoidCallback onTap;
  Color? color;
  AppButton2({Key? key,required this.title,required this.onTap,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: context.isDarkMode  == false  ?  const Color(0xff2D3748) : const Color(0xffD9F0FC),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: context.isDarkMode  == false ? Colors.white : Colors.black,fontWeight: FontWeight.w700,fontSize: 14,fontFamily: AppAssets.fontFamily)),
        ),
      ).marginSymmetric(horizontal: 24),
    );
  }
}



class GoogleSignButton extends StatelessWidget {
  VoidCallback  onTap;
  GoogleSignButton({Key? key,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.red,width: 1)
        ),
        child: Center(
          child: Text("Sign in with Google",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400,fontSize: 16,fontFamily: AppAssets.fontFamily)),
        ),
      ).marginSymmetric(horizontal: 24),
    );
  }
}

