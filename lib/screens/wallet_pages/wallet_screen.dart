import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/balance_pages/balance_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../modals/crypto_modal.dart';
import '../coin_trend_pages/coin_trend_screen.dart';
import '../scan_pages/scan_screen.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(
        backgroundColor: context.isDarkMode ? const Color(0xff030303) : const Color(0xff1A202C),
        appbarTitle: "Wallet",
          textColor : Colors.white,
        leading: IconButton(onPressed: (){
          Get.to(const ScanScreen(),transition: Transition.rightToLeft);
        }, icon: AppIcon.scanneIcon(context,color: Colors.white)),
        action: [
          IconButton(onPressed: (){}, icon: AppIcon.bellIcon(context,color: Colors.white))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   Container(
                     height: 170,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: context.isDarkMode ? const Color(0xff030303) : const Color(0xff1A202C),
                       borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         20.0.addHSpace(),
                         const Text("\$54,417.80",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w700),),
                         5.0.addHSpace(),
                         const Text("Total Balance",style: TextStyle(color: Color(0xffC6E9FB),fontWeight: FontWeight.w500,fontSize: 17),)
                       ],
                     ),
                   )
                  ],
                ),
                Container(
                  height: 100,width: double.infinity,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: context.isDarkMode ? Colors.white :  const Color(0xff2D3748),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: context.isDarkMode == false ? null : [
                      const BoxShadow(
                        color: Color(0xffEDEDED),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffFFE2E0),
                            borderRadius: BorderRadius.circular(17.69)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                 Text("40%",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700),),
                                 Text("BTC",style: TextStyle(color: Color(0xff4A5568),fontSize: 13,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ).marginAll(8),
                      ),

                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffD9F0FC),
                              borderRadius: BorderRadius.circular(17.69)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("30%",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700),),
                                Text("ETH",style: TextStyle(color: Color(0xff4A5568),fontSize: 13,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ).marginAll(8),
                      ),

                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffE9ECF9),
                              borderRadius: BorderRadius.circular(17.69)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("20%",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700),),
                                Text("BNB",style: TextStyle(color: Color(0xff4A5568),fontSize: 13,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ).marginAll(8),
                      ),
                    ],
                  ),
                ).marginOnly(top: 70,left: 10,right: 10),
              ],
            ),
            10.0.addHSpace(),
            Text("Transition",style: TextStyle(color: context.isDarkMode == false ? Colors.white : const Color(0xff4A5568),fontWeight: FontWeight.w700,fontSize: 19),).marginOnly(left: 10),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: suggestionCryptoList.length,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      Get.to(const CoinTrendScreen(),transition: Transition.rightToLeft);
                    },
                    child: Container(
                      height: 79,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: context.theme.backgroundColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1,color: context.isDarkMode ? const  Color(0xffD3DAF2)  : const Color(0xff2D3748))
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: suggestionCryptoList[index].backGroundColor,
                            child: suggestionCryptoList[index].icon,
                          ),
                          5.0.addWSpace(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(suggestionCryptoList[index].shortName.toString(),style: TextStyle(color: context.isDarkMode ? const Color(0xff030303) : const Color(0xffA0AEC0),fontWeight: FontWeight.w600,fontSize: 16,fontFamily: AppAssets.fontFamily),),
                              6.0.addHSpace(),
                              Text(suggestionCryptoList[index].fullName.toString(),style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xff718096),fontWeight: FontWeight.w400,fontSize: 13,fontFamily: AppAssets.fontFamily),)
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(suggestionCryptoList[index].price.toString(),style: TextStyle(color: context.isDarkMode ? Colors.black : Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                              6.0.addHSpace(),
                              Text(suggestionCryptoList[index].percentageIncrease.toString(),style: TextStyle(color: context.isDarkMode ? Colors.black : const Color(0xffC1FFD7),fontWeight: FontWeight.w400,fontSize: 13),),
                            ],
                          )
                        ],
                      ).marginSymmetric(horizontal: 10),
                    ).marginSymmetric(horizontal: 15,vertical: 5),
                  );
                }),

          ],
        ),
      ),
    );
  }
}
