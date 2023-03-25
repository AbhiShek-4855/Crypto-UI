import 'dart:async';

import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/intro_pages/intro_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../utils/theme_services.dart';


class WelComeScreen extends StatefulWidget {
  const WelComeScreen({Key? key}) : super(key: key);

  @override
  State<WelComeScreen> createState() => _WelComeScreenState();
}

class _WelComeScreenState extends State<WelComeScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5), () {
        Get.offAll(const IntroScreen(), transition: Transition.rightToLeft);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Center(
        child: Stack(
          children: [



            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AppIcon.fingerPrintRing1(),
                        AppIcon.fingerPrintRing2(),
                        AppIcon.fingerPrintRing3(),
                        AppIcon.fingerPrintImage(context),
                      ]
                  ),
                ),
                10.0.addHSpace(),
                Text("Touch ID to Open Bit UI Kit",style: TextStyle(color: context.isDarkMode  ? Colors.black :  Colors.white,fontWeight: FontWeight.w400,fontSize: 14,fontFamily: AppAssets.fontFamily),),
                Text("Use PIN-code",style: TextStyle(color: context.isDarkMode ? Colors.black  : const Color(0xffD9F0FC)  ,fontSize: 13,fontWeight: FontWeight.w400,fontFamily: AppAssets.fontFamily)),


              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  GestureDetector(
                    onTap: ThemeServices().switchTheme,
                    child: Container(
                      height: 56,
                      width: 153,
                      decoration: BoxDecoration(
                          color: const Color(0xff2D3748),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text("Cancel",style: TextStyle(fontFamily: AppAssets.fontFamily)),
                      ),
                    ),
                  ),
                ],
              ),
            ).marginOnly(bottom: 20),





          ],
        ),
      ),
    );
  }
}

