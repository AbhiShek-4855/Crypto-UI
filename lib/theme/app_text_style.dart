import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/app_assets.dart';

class AppTextStyle{

  static TextStyle appLogoText(BuildContext context,{Color? color}){
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      fontFamily: AppAssets.fontFamily,
      color: color ??  context.theme.textTheme.headline5?.color,
    );
  }


  static TextStyle introButtonStyle(BuildContext context,{Color? color}){
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      fontFamily: AppAssets.fontFamily,
      color: color ??  context.theme.textTheme.headline4?.color,
    );
  }

  static TextStyle boldText(BuildContext context,{Color? color,double? size}){
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: size ?? 24,
      fontFamily: AppAssets.fontFamily,
      color: color ??  context.theme.textTheme.headline1?.color,
    );
  }

  static TextStyle skipText(BuildContext context,{Color? color}){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      fontFamily: AppAssets.fontFamily,
      color: color ??  context.theme.textTheme.headline2?.color,
    );
  }

  static TextStyle introSmallText(BuildContext context,{Color? color}){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13,
      fontFamily: AppAssets.fontFamily,
      color: color ??  context.theme.textTheme.headline3?.color,
    );
  }

  static TextStyle buttonTextStyle(BuildContext context,{Color? color}){
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      // fontFamily: AppAssets.fontFamily,
      color: color ??  context.theme.backgroundColor,
    );
  }

  static TextStyle appBarText(BuildContext context){
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      fontFamily: AppAssets.fontFamily,
      color:  context.theme.textTheme.headline6!.color,
    );
  }


}