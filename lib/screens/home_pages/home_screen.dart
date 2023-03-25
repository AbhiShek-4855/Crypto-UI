import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/scan_pages/scan_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../modals/crypto_modal.dart';
import '../../widgets/app_app_bar.dart';
import '../coin_trend_pages/coin_trend_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,

      appBar: AppAppBar(
        leading: IconButton(onPressed: (){
          Get.to(const ScanScreen(),transition: Transition.rightToLeft);
        }, icon: AppIcon.scanneIcon(context)),
        action: [
          IconButton(onPressed: (){}, icon: AppIcon.searchIcon(context),tooltip: "Search",),
          IconButton(onPressed: (){}, icon: AppIcon.bellIcon(context),tooltip: "Notification")
        ],
        title: Container(
          height: 29,
          width: 99,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.15),
            color: context.isDarkMode  ? const Color(0xffECF8FE) : const Color(0xff718096),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon.offerIcon(),
              2.0.addWSpace(),
              Text("Get \$10.00",style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 11,color: const Color(0xff030303)),),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    cryptoList.length, (index) => GestureDetector(
                  onTap: (){
                    Get.to(const CoinTrendScreen(),transition: Transition.rightToLeft);
                  },
                  child: Container(height: 152,width: 157,decoration: BoxDecoration(color: cryptoList[index].backGroundColor, borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(cryptoList[index].cryptoShortName.toString(),
                            style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 12,fontWeight: FontWeight.w600,color: const Color(0xff4A5568)),
                          ),

                          Text(cryptoList[index].cryptoPricePercentage.toString(),
                            style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 12,fontWeight: FontWeight.w600,color: const Color(0xff4A5568)),
                          ),

                        ],
                      ).marginOnly(left: 16,right: 16,top: 14),
                      8.0.addHSpace(),
                      Text(cryptoList[index].cryptoPrice.toString(),
                        style: const TextStyle(fontSize: 21,fontWeight: FontWeight.w700,color: Color(0xff030303)),
                      ).marginOnly(left: 16),
                      const Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff353535),
                            child: cryptoList[index].cryptoIcon,
                          ),
                          10.0.addWSpace(),
                          Text(cryptoList[index].cryptoName.toString() , style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,fontFamily: AppAssets.fontFamily,color: const Color(0xff0D1118)),)
                        ],
                      ).marginOnly(bottom: 17,left: 17)
                    ],
                  ),
                  ).marginAll(8),
                )),
              ),
            ),
            15.0.addHSpace(),
            Text("Markets",style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : Colors.white,fontWeight: FontWeight.w700,fontSize: 19,fontFamily: AppAssets.fontFamily)).marginOnly(left: 15),

            10.0.addHSpace(),

            Row(
              children: [
                Container(
                  padding : const EdgeInsets.symmetric(vertical: 10),height: 30,width: 50,decoration: BoxDecoration(color: context.isDarkMode ? const Color(0xffEDF2F7) : const Color(0xff2D3748),borderRadius: BorderRadius.circular(6.63)),
                  child: const Center(
                    child: Text("All",style: TextStyle(color: Color(0xffA0AEC0),fontSize: 12,fontWeight: FontWeight.w600),),
                  ),
                ),

                5.0.addWSpace(),
                Container(
                  padding : const EdgeInsets.symmetric(vertical: 10),height: 30,width: 100,decoration: BoxDecoration(color: context.isDarkMode ? const Color(0xffEDF2F7) : const Color(0xff2D3748),borderRadius: BorderRadius.circular(6.63)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const  Icon(Icons.star_border,color: Color(0xffA0AEC0),size: 13),
                        5.0.addWSpace(),
                        const Text("Favourite",style: TextStyle(color: Color(0xffA0AEC0),fontSize: 12,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ),

                const Spacer(),
                Container(
                  padding : const EdgeInsets.symmetric(vertical: 10),height: 30,width: 70,decoration: BoxDecoration(color: context.isDarkMode ? const Color(0xffEDF2F7) : const Color(0xff2D3748),borderRadius: BorderRadius.circular(6.63)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const  Icon(Icons.arrow_downward_outlined,color: Color(0xffA0AEC0),size: 13),
                        5.0.addWSpace(),
                        const Text("Hot",style: TextStyle(color:  Color(0xffA0AEC0),fontSize: 12,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                ),
              ],
            ).marginSymmetric(horizontal: 15),
            15.0.addHSpace(),

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
      )
    );
  }
}


