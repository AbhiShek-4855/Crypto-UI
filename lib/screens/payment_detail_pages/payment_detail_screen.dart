import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_app_bar.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(leading: AppIcon.backIcon(context),appbarTitle: "Payment Details"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: CircleAvatar(backgroundColor: context.isDarkMode ? const Color(0xffFEBBBA)  : const Color(0xffC1FFD7),radius: 30,child: const Icon(Icons.check,color: Colors.black,),)),
            15.0.addHSpace(),
            Text("Successfully Completed",style: TextStyle(color: context.theme.textTheme.headline6!.color,fontWeight: FontWeight.w600,fontSize: 17,fontFamily: AppAssets.fontFamily),),

            30.0.addHSpace(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("0.12889",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: context.textTheme.headline6!.color),),
                5.0.addWSpace(),
                Text("BTC",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: context.textTheme.headline6!.color),),

              ],
            ),


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
                  paymentDetails(context,leadingName: "To",suffixName: "0xbb9bc244d7981.."),
                  paymentDetails(context,leadingName: "Name",suffixName: "Md Shahin Alam"),
                  paymentDetails(context,leadingName: "Date",suffixName: "25 jan, 2021"),
                  paymentDetails(context,leadingName: "Fabuser",suffixName: "LM3B41"),
                ],
              ).marginOnly(left: 10),
            ).marginSymmetric(horizontal: 15),


            30.0.addHSpace(),

            paymentDetails(context,leadingName: "Transfer fee",suffixName: "\$10.00").marginSymmetric(horizontal: 30)
          ],
        ),
      ),
    );
  }

  Widget paymentDetails(BuildContext context, {required String leadingName,required String suffixName}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
            height: 30,
            width: 100,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(leadingName,style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0)),))),
        Text(suffixName,style: TextStyle(color: context.textTheme.headline6!.color,fontSize: 16,fontWeight: FontWeight.w600),).marginOnly(left: 30),

      ],
    );
  }

}
