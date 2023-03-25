import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/withdraw_pages/with_draw_screen_controller.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modals/crypto_modal.dart';
import '../../widgets/app_app_bar.dart';

class WithDrawScreen extends StatelessWidget {
  const WithDrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WithDrawScreenController withDrawScreenController = Get.put(WithDrawScreenController());

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(
        leading: AppIcon.backIcon(context),
        appbarTitle: "Withdraw",
      ),

      body: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: suggestionCryptoList.length,
          itemBuilder: (context, index) {
            return Obx(() {
              return GestureDetector(
                onTap: () {
                  withDrawScreenController.onChangeIndex(index);
                },
                child: Container(
                  height: 79,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: withDrawScreenController.selectedIndex.value == index ? const Color(0xffC6E9FB) :context.theme.backgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: const Color(0xffEDF2F7))
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
                          Text(suggestionCryptoList[index].shortName.toString(),
                            style:

                            withDrawScreenController.selectedIndex.value == index
                                ?
                            const TextStyle(
                                color:   Colors.black ,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)
                                :
                            TextStyle(
                                color: context.isDarkMode ? const Color(0xff030303) : const Color(0xffA0AEC0),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                            ),),
                          Text(suggestionCryptoList[index].fullName.toString(),
                            style:

                            withDrawScreenController.selectedIndex.value == index
                                ?
                            const TextStyle(
                                color:   Colors.black ,
                                fontWeight: FontWeight.w400,
                                fontSize: 13)
                                :
                            TextStyle(
                                color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xff718096),
                                fontWeight: FontWeight.w400,
                                fontSize: 13,),)
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(suggestionCryptoList[index].price.toString(),
                            style: withDrawScreenController.selectedIndex.value == index
                                ?
                            const TextStyle(
                                color:   Colors.black ,
                                fontWeight: FontWeight.w600,
                                fontSize: 16)
                                :
                            TextStyle(color: context.isDarkMode ? withDrawScreenController.selectedIndex.value == index ? Colors.black : Colors.black : Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),),
                          Text(suggestionCryptoList[index].percentageIncrease.toString(), style: withDrawScreenController.selectedIndex.value == index
                              ?
                          const TextStyle(
                              color:   Colors.black ,
                              fontWeight: FontWeight.w400,
                              fontSize: 13)
                              :  TextStyle(
                              color: context.isDarkMode ?   Colors.black : const Color(0xffC1FFD7),
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ).marginSymmetric(horizontal: 10),
                ).marginSymmetric(horizontal: 10, vertical: 5),
              );
            });
          }),
    );
  }
}
