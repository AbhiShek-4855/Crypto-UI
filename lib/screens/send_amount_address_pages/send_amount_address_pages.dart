import 'package:crypto_ui/screens/send_amount_address_pages/send_amount_address_controller.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/utils/theme_services.dart';
import 'package:crypto_ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../send_bit_coin_pages/send_bit_coin_screen.dart';

class SendAmountAddressPages extends StatelessWidget {
  const SendAmountAddressPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;

    List<String> sendAddressList = [
      "BTC",
      "BEP2",
      "BEP3",
    ];

    final sendAmountController = Get.put(SendAmountAddressController());

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: context.theme.backgroundColor,
                height: height / 10
            ),
            Container(
              height: 700,
              decoration: BoxDecoration(
                  color: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(
                      0xff1A202C),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     AppIcon.backIcon(context),

                      Obx(() {
                        return Expanded(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: context.isDarkMode ? const Color(0xffCFD7DF) : const Color(0xff2B3546),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Row(
                                children: List.generate(sendAddressList.length, (index) =>
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          sendAmountController.onChangeIndex(index);
                                        },
                                        child: sendAmountController.selectedIndex.value == index ? Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: context.isDarkMode ?   const Color(0xff1A202C)   : const Color(0xffD9F0FC),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Center(
                                            child: Text(sendAddressList[index],
                                              style: TextStyle(color: context.isDarkMode == false ? Colors.black : Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                                          ),
                                        ) : SizedBox(
                                          height: 50,
                                          child: Center(
                                            child: Text(sendAddressList[index],
                                              style: TextStyle(color: context.isDarkMode ? Colors.black : Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                                          ),
                                        ),
                                      ),
                                    ))
                            ),
                          ),
                        );
                      }),

                      IconButton(onPressed: ThemeServices().switchTheme,
                          icon: AppIcon.cancelIcon(context))
                    ],
                  ).marginOnly(top: 15),

                  40.0.addHSpace(),

                  TextFormField(
                  style:  TextStyle(color: context.isDarkMode ? Colors.black : Colors.white,fontWeight: FontWeight.w700,fontSize: 16),
                  decoration: const InputDecoration(
                    labelText: "Wallet address",
                    labelStyle: TextStyle(color: Color(0xff969AA8),fontSize: 15,fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:   Color(0xff718096)
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xff718096)
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:   Color(0xff718096)
                      ),
                    ),
                  ),
              ).marginSymmetric(horizontal: 10),
                  
                  
                  Container(
                    height: height / 9,
                  ),
                  AppButton(title: "Next", onTap: (){
                    Get.to(const SendBitCoinScreen(),transition: Transition.rightToLeft);
                  })



                  // TextFormField(
                  //   style:  TextStyle(color: context.isDarkMode ? Colors.black : Colors.white,fontWeight: FontWeight.w700,fontSize: 16),
                  //   decoration: InputDecoration(
                  //       labelText: "Wallet address",
                  //       labelStyle: TextStyle(color: Color(0xff969AA8),fontSize: 15,fontWeight: FontWeight.w500),
                  //     // focusedBorder: OutlineInputBorder(
                  //     //   borderSide: BorderSide(width: 3, color: Color(0xffF02E65)),
                  //     // ),
                  //   ),
                  // ).marginSymmetric(horizontal: 10),
                ],
              ),
            ),
          ],
        ).marginOnly(top: 20),
      ),
    );
  }
}
