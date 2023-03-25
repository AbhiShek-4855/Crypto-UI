import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/app_assets.dart';

class AppAppBar extends PreferredSize {
  final String? appbarTitle;
  Widget? title;
  Color? iconColor;
  Color? backgroundColor;
  Widget? leading;
  Widget? flexibleSpace;
  List<Widget>? action = [];
  PreferredSizeWidget? bottom;
  VoidCallback? onTap;
  Color? textColor;

  AppAppBar({
    Key? key,
    this.title,
    this.textColor,
    this.appbarTitle,
    this.leading,
    this.backgroundColor,
    this.bottom,
    this.iconColor,
    this.onTap,
    this.flexibleSpace,
    this.action,
    Size? preferredSize,
  }) : super(
    key: key,
    child: Container(),
    preferredSize: const Size.fromHeight(80),
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      flexibleSpace: flexibleSpace,
      actions: action,
      centerTitle: true,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      toolbarHeight: 70,
      titleSpacing: 0,
      title: title ?? Text(appbarTitle ?? "",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: textColor ??  context.theme.textTheme.headline6!.color,fontFamily: AppAssets.fontFamily)).marginOnly(left: 15, bottom: 15),
      backgroundColor: backgroundColor ??  context.theme.backgroundColor,
      // backgroundColor: Colors.red,
    );
  }
}


class AppAppBar2 extends PreferredSize {
  final String? appbarTitle;
  Widget? title;
  Color? iconColor;
  Widget? leading;
  Widget? flexibleSpace;
  List<Widget>? action = [];
  PreferredSizeWidget? bottom;
  VoidCallback? onTap;
  Color? textColor;

  AppAppBar2({
    Key? key,
    this.title,
    this.textColor,
    this.appbarTitle,
    this.leading,
    this.bottom,
    this.iconColor,
    this.onTap,
    this.flexibleSpace,
    this.action,
    Size? preferredSize,
  }) : super(
    key: key,
    child: Container(),
    preferredSize: const Size.fromHeight(80),
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      flexibleSpace: flexibleSpace,
      actions: action,
      centerTitle: true,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 1,
      titleSpacing: 0,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
      title: title ?? Text(appbarTitle ?? "",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: textColor ??  context.theme.textTheme.headline6!.color,fontFamily: AppAssets.fontFamily)).marginOnly(left: 15, bottom: 15),
      backgroundColor: context.isDarkMode ? Color(0xffFFFFFF) : Color(0xff2D3748),
      // backgroundColor: Colors.red,
    );
  }
}