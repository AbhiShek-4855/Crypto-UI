import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/screens/payment_detail_pages/payment_detail_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../../widgets/app_app_bar.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final   height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(leading: AppIcon.backIcon(context)),
      body: Column(
        children: [

          Container(
            height: height / 10,
          ),

          Image.asset(context.isDarkMode ? AppAssets.qrCodeImage1 : AppAssets.qrCodeImage2),


          Container(
            height: height / 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(const  PaymentDetailScreen(),transition: Transition.rightToLeft);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: const Color(0xffD9F0FC),
                      child: context.isDarkMode ?  AppIcon.arrowDownIcon() : AppIcon.recieveIcon() ,
                    ),
                  ),
                  5.0.addHSpace(),
                  Text("Receive",style: TextStyle(color: context.theme.textTheme.headline6!.color,fontWeight: FontWeight.w600,fontSize: 14),)
                ],
              ),
              20.0.addWSpace(),
              Column(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xffFFE2E0),
                    child: AppIcon.squareIcon(context,color: Colors.black),
                  ),
                  5.0.addHSpace(),
                  Text("More",style: TextStyle(color: context.theme.textTheme.headline6!.color,fontWeight: FontWeight.w600,fontSize: 14),)
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
