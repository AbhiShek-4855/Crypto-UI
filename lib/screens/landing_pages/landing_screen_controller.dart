// ignore_for_file: unrelated_type_equality_checks
import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/send_amount_pages/send_amount_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_assets.dart';
import '../payment_detail_pages/payment_detail_screen.dart';

class LandingScreenController extends GetxController{


  RxInt tabIndex =  0.obs;

  changeTabIndex(int index){
   if(index == 2){
     update();
     // BottomSheetClass();
    homeScaffoldKey.currentState!.showBottomSheet(
             enableDrag: true,
             shape: const RoundedRectangleBorder(borderRadius:  BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22))),
             (context) =>
                 ClipRRect(
               borderRadius: const BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
               child: Container(
                height: 300,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: context.isDarkMode  ? const Color(0xfff2f2f2) : const Color(0xff1A202C),
                  borderRadius:  const BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
                  boxShadow: const [
                    BoxShadow(color: Colors.black,blurRadius: 100000,spreadRadius: 1000000)
                  ]
                ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     30.0.addHSpace(),
                     landingPopUp(
                         onTap: (){
                           Get.back();
                           Get.to(const  SendAmountScreen(),transition: Transition.rightToLeft);
                           // homeScaffoldKey.currentState!.dispose();
                         },
                         context, backColor: const Color(0xffD9F0FC),title: "Send",subTitle: "Send crypto to another wallet",icon: context.isDarkMode ? AppIcon.arrowUpIcon() : AppIcon.arrowUpIcon1()),
                     30.0.addHSpace(),
                     landingPopUp(
                         onTap: (){
                           Get.back();
                           Get.to(const  PaymentDetailScreen(),transition: Transition.rightToLeft);
                         },
                         context, backColor: const Color(0xffFFE2E0),title: "Receive",subTitle: "Receive crypto from another wallet",icon: context.isDarkMode ? AppIcon.arrowDownIcon2() : AppIcon.arrowDownIcon1()),
                     30.0.addHSpace(),
                     landingPopUp(
                         onTap: (){},
                         context, backColor: const Color(0xffD3DAF2),title: "Buy",subTitle: "Buy crypto from the market",icon: AppIcon.buyIcon()),
                     30.0.addHSpace(),

                   ],
                 ),
               ),
              )
     );
   }else{
     tabIndex.value = index;
     update();
   }
  }
}

Widget landingPopUp(BuildContext context,{required Color backColor,required String title,required String subTitle,required Widget icon,required VoidCallback onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: backColor,
          radius: 25,
          child: icon,
        ),
        10.0.addWSpace(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style: TextStyle(color: context.theme.textTheme.headline6!.color,fontSize: 21,fontWeight: FontWeight.w700),),
            5.0.addHSpace(),
            Text(subTitle,style: TextStyle(color: context.isDarkMode ? Colors.black : const Color(0xff4A5568),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: AppAssets.fontFamily),),
          ],
        )
      ],
    ).marginSymmetric(horizontal: 24),
  );
}
// PersistentBottomSheetController controller = PersistentBottomSheetController();
GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey();


bottomSheetOpen(BuildContext context) {
  return showBottomSheet(
      context: context, builder: (_){
    return Container(
      height: 100,
      color: Colors.red,
    );
  });
}



