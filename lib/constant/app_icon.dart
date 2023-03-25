import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/theme_services.dart';
import 'app_assets.dart';

class AppIcon{


  static Widget introImage1() {
    return SvgPicture.asset(
      AppAssets.introImage1,
    );
  }

  static Widget introImage2() {
    return SvgPicture.asset(
      AppAssets.introImage2,
    );
  }

  static Widget introImage3() {
    return SvgPicture.asset(
      AppAssets.introImage3,
    );
  }

  static Widget rectangleIcon() {
    return SvgPicture.asset(
      AppAssets.rectangleIcon,
    );
  }
  static Widget indicatorIcon() {
    return SvgPicture.asset(
      AppAssets.indicatorIcon,
    );
  }
  static Widget barChatIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.barChatIcon,
      color: context.theme.buttonColor,
    );
  }
  static Widget walletIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.walletIcon,
      color: context.theme.buttonColor,
    );
  }
  static Widget personIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.personIcon,
      color: context.theme.buttonColor,
    );
  }
  static Widget squareIcon(BuildContext context,{Color? color}) {
    return SvgPicture.asset(
      AppAssets.squareIcon,
      color: color ?? context.theme.buttonColor,
    );
  }
  static Widget exchangeIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.exchangeIcon,
      color: context.isDarkMode ? Colors.white :  Colors.black,
      // color: context.theme.buttonColor,
    );
  }
  /// WLCXOMES SCREEN ICON
  static Widget fingerPrintRing1() {
    return SvgPicture.asset(
      AppAssets.fingerPrintRing1,
      // color: context.theme.buttonColor,
    );
  }
  static Widget fingerPrintRing2() {
    return SvgPicture.asset(
      AppAssets.fingerPrintRing2,
      // color: context.theme.buttonColor,
    );
  }
  static Widget fingerPrintRing3() {
    return SvgPicture.asset(
      AppAssets.fingerPrintRing3,
      // color: context.theme.buttonColor,
    );
  }
  static Widget fingerPrintImage(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.fingerPrintImage,
      color: context.isDarkMode  ?  Colors.black:  Colors.white  ,
    );
  }
  static Widget backIcon(BuildContext context) {
    return IconButton(
      tooltip: "Back",
        // onPressed: ThemeServices().switchTheme,
        onPressed: (){
          Get.back();
        },
        icon: Icon(Icons.arrow_back_rounded,color: context.theme.textTheme.headline6!.color,));
  }
  static Widget scanneIcon(BuildContext context,{Color? color}) {
    return SvgPicture.asset(
      AppAssets.scanneIcon,
      color: color ?? context.theme.textTheme.headline6!.color,
    );
  }

  static Widget searchIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.searchIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }
  static Widget bellIcon(BuildContext context,{Color? color}) {
    return SvgPicture.asset(
      AppAssets.bellIcon,
      color: color ?? context.theme.textTheme.headline6!.color,
    );
  }
  static Widget offerIcon() {
    return SvgPicture.asset(
      AppAssets.offerIcon,
    );
  }


  static Widget cryptoIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.cryptoIcon,
      color: color ?? Colors.white,
    );
  }
  static Widget etherumIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.etherumIcon,color: color,
    );
  }
  static Widget dogeIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.dogeIcon,
      color: color ?? Colors.white,
    );
  }
  static Widget galaIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.galaIcon,
     color: color ?? Colors.white,
    );
  }
  static Widget sanIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.sanIcon,
      color: color ?? Colors.white,
    );
  }
  static Widget ltcIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.ltcIcon,
      color: color ?? Colors.white,
    );
  }
  static Widget adaIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.adaIcon,
      color: color ?? Colors.white,
    );
  }

  static Widget plusIcon(BuildContext  context,{Color? color}) {
    return SvgPicture.asset(
      AppAssets.plusIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }
  static Widget infoIcon() {
    return SvgPicture.asset(
      AppAssets.infoIcon,
    );
  }
  static Widget removeIcon(BuildContext  context,{Color? color}) {
    return SvgPicture.asset(
      AppAssets.removeIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }
  static Widget sendIcon(BuildContext  context,{Color? color}) {
    return SvgPicture.asset(
      AppAssets.sendIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }


  static Widget iconPath({Color? color}) {
    return SvgPicture.asset(
      AppAssets.editIcon,
      color: color,
    );
  }



  static Widget settingsIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.settingsIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }

  static Widget sidebarIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.sidebarIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }

  static Widget giftIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.giftIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }

  static Widget listIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.listIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }

  static Widget notificationDot() {
    return SvgPicture.asset(
      AppAssets.notificationDot,
    );
  }

  static Widget arrowDownIcon() {
    return SvgPicture.asset(
      AppAssets.arrowDownIcon,
    );
  }
  static Widget recieveIcon() {
    return SvgPicture.asset(
      AppAssets.recieveIcon,
    );
  }

  static Widget arrowUpIcon1() {
    return SvgPicture.asset(
      AppAssets.arrowUpIcon1,
    );
  }
  static Widget arrowUpIcon() {
    return SvgPicture.asset(
      AppAssets.arrowUpIcon,
    );
  }

  static Widget arrowDownIcon1() {
    return SvgPicture.asset(
      AppAssets.arrowDownIcon1,
    );
  }

  static Widget arrowDownIcon2() {
    return SvgPicture.asset(
      AppAssets.arrowDownIcon2,
    );
  }

  static Widget buyIcon() {
    return SvgPicture.asset(
      AppAssets.buyIcon,
    );
  }

  static Widget rotateIcon() {
    return SvgPicture.asset(
      AppAssets.rotateIcon,
    );
  }

  static Widget themeIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.themeIcon,
      color: context.textTheme.headline6!.color,
      height: 25,
      width: 25,
    );
  }



  static Widget backSpaceIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.backSpaceIcon,
      color: context.theme.textTheme.headline6!.color,
    );
  }

  static Widget cancelIcon(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.cancelIcon,
      color: context.isDarkMode ? const Color(0xff4A5568) : Colors.white,
    );
  }






}