import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custome_numb_pad.dart';
import '../send_amount_address_pages/send_amount_address_pages.dart';

class SendAmountScreen extends StatefulWidget {
  const SendAmountScreen({Key? key}) : super(key: key);

  @override
  State<SendAmountScreen> createState() => _SendAmountScreenState();
}

class _SendAmountScreenState extends State<SendAmountScreen> {

  final TextEditingController _myController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: context.theme.backgroundColor,
                height :height/ 10
            ),
            Container(
              height: 700,
              decoration: BoxDecoration(
                color: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(0xff1A202C),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22) )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Enter Amount",style: TextStyle(color: context.textTheme.headline6!.color,fontWeight: FontWeight.w500,fontSize:16),),
                      IconButton(onPressed: (){
                        Get.back();
                      }, icon: AppIcon.cancelIcon(context),tooltip: "Cancel",)
                    ],
                  ).marginOnly(left: 20),

                  40.0.addHSpace(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 70,
                      child: Center(
                          child: TextField(
                            controller: _myController,
                            textAlign: TextAlign.center,
                            showCursor: false,
                            style:  TextStyle(fontSize: 40,color: context.textTheme.headline6!.color),
                            // Disable the default soft keybaord
                            keyboardType: TextInputType.none,
                          )),
                    ),
                  ),
                  Container(
                      height :height/ 10
                  ),
                  AppButton2(title: "Next", onTap: (){
                    Get.to(const  SendAmountAddressPages(),transition: Transition.rightToLeft);
                  }).marginSymmetric(horizontal: 10),
                  // implement the custom NumPad
                  NumPad(
                    buttonSize: 50,
                    buttonColor: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(0xff1A202C),
                    iconColor: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(0xff1A202C),
                    controller: _myController,
                    delete: () {
                      _myController.text = _myController.text.substring(0, _myController.text.length - 1);
                    },
                    // do something with the input numbers
                    onSubmit: () {
                      debugPrint('Your code: ${_myController.text}');
                      // showDialog(
                      //     context: context,
                      //     builder: (_) => AlertDialog(
                      //       content: Text(
                      //         "You code is ${_myController.text}",
                      //         style: const TextStyle(fontSize: 30),
                      //       ),
                      //     ));
                    },
                  ),
                ],
              ),
            )
          ],
        ).marginOnly(top: 20),
      ),
    );
  }
}
