import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/screens/landing_pages/landing_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../../widgets/app_app_bar.dart';

class SendBitCoinScreen extends StatelessWidget {
  const SendBitCoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(
        leading: AppIcon.backIcon(context),
        appbarTitle: "Send Bitcoin",
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            20.0.addHSpace(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("0.12889",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 40,color: context.textTheme.headline6!.color),),
                5.0.addWSpace(),
                Text("BTC",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: context.textTheme.headline6!.color),),
              ],
            ),
            5.0.addHSpace(),
            Text("Total amount You are sending",style: TextStyle(color: context.isDarkMode ? const Color(0xff718096) : const Color(0xffA0AEC0),fontFamily: AppAssets.fontFamily,fontWeight: FontWeight.w400,fontSize: 14),),


            40.0.addHSpace(),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(0xff1A202C),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paymentDetails(context,leadingName: "Address",suffixName: "0xbb9bc244d7981.."),
                  paymentDetails(context,leadingName: "Transfer Fee",suffixName: "\$10.00"),
                  paymentDetails(context,leadingName: "Total Charge",suffixName: "\$50.00"),
                ],
              ).marginOnly(left: 10),
            ).marginSymmetric(horizontal: 15),
            20.0.addHSpace(),
            AppButton2(title: "Send BTC", onTap: (){
              Get.offAll(LandingScreen(),transition: Transition.rightToLeft);
            }),
            20.0.addHSpace(),
          ],
        ),
      ),
    );
  }

  Widget paymentDetails(BuildContext context, {required String leadingName,required String suffixName}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 30, width: 100, child: Align(alignment: Alignment.centerLeft, child: Text(leadingName,style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0)),))),
        Text(suffixName,style: TextStyle(color: context.textTheme.headline6!.color,fontSize: 16,fontWeight: FontWeight.w600),).marginOnly(left: 30),
      ],
    );
  }
}
