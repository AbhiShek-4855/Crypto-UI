import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/convert_confirm_pages/convert_confirm_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/app_app_bar.dart';
import '../../widgets/app_button.dart';
import '../../widgets/custome_numb_pad.dart';
import '../../widgets/my_saperator.dart';

class ConvertScreen extends StatefulWidget {
  const ConvertScreen({Key? key}) : super(key: key);

  @override
  State<ConvertScreen> createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  String dropdownValue = 'Dog';

  TextEditingController fromController = TextEditingController(text: "0.0");
  TextEditingController toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        hideKeyboard(context);
      },
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppAppBar(
          leading: AppIcon.backIcon(context),
          appbarTitle: "Convert",
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              10.0.addHSpace(),
              Container(
               padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: context.isDarkMode ? Colors.white  : const Color(0xff2D3748),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow:   context.isDarkMode  ?  [
                      const BoxShadow(color: Color(0xffEFF0F1),spreadRadius: 1,blurRadius: 10,offset: Offset(0.0, 4))
                    ] : null
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.0.addHSpace(),
                    Text("From",style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),fontWeight: FontWeight.w400,fontSize: 12,fontFamily: AppAssets.fontFamily),).marginOnly(left: 10),
                    10.0.addHSpace(),
                    Container(
                      height: 56.88,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: context.theme.backgroundColor,
                          border: Border.all(color: context.isDarkMode ?  const Color(0xffCBD5E0) : const Color(0xff4A5568),width: 1),
                          borderRadius: BorderRadius.circular(8.91)
                      ),
                      child: Row(
                        children: [

                          Expanded(
                        child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon:  Icon(Icons.arrow_drop_down,color: context.textTheme.headline6!.color),
                                focusColor: Colors.transparent,
                                dropdownColor: context.theme.backgroundColor,
                                // icon: Icon(Icons.arrow_drop_down),
                                style: TextStyle(color: context.textTheme.headline6!.color,fontWeight: FontWeight.w500,fontSize: 5),
                                value: dropdownValue,
                                items: <String>['Dog', 'Cat', 'Tiger', 'Lion'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      children: [

                                        CircleAvatar(
                                          backgroundColor: const Color(0xffD9F0FC),radius: 17,child: AppIcon.cryptoIcon(color: Colors.black),),
                                        5.0.addWSpace(),

                                        Text(
                                          value,
                                          style: TextStyle(color: context.textTheme.headline6!.color,fontWeight: FontWeight.w500,fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ),
                            ),
                      ),
                          // const Spacer(),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              controller: fromController,
                              textAlign: TextAlign.center,
                              showCursor: false,
                              style:  TextStyle(fontSize: 16,color: context.textTheme.headline6!.color,fontWeight: FontWeight.w700),
                              // Disable the default soft keybaord
                              keyboardType: TextInputType.none,
                            ),
                          ),

                          Text("MAX",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: context.isDarkMode ? const Color(0xff718096) : const Color(0xff4A5568)),)


                        ],
                      ).marginSymmetric(horizontal: 3),
                    ).marginSymmetric(horizontal: 10),


                    20.0.addHSpace(),
                    Stack(
                        alignment: Alignment.center,
                        children: [
                      const MySeparator(color: Color(0xff718096),).marginSymmetric(horizontal: 10),
                          CircleAvatar(radius: 15,backgroundColor: const Color(0xffE9ECF9),child: AppIcon.rotateIcon(),)


                    ]),

                    20.0.addHSpace(),
                    Text("To",style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),fontWeight: FontWeight.w400,fontSize: 12,fontFamily: AppAssets.fontFamily),).marginOnly(left: 10),
                    10.0.addHSpace(),
                    Container(
                      height: 56.88,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: context.theme.backgroundColor,
                          border: Border.all(color: context.isDarkMode ?  const Color(0xffCBD5E0) : const Color(0xff4A5568),width: 1),
                          borderRadius: BorderRadius.circular(8.91)
                      ),
                      child: Row(
                        children: [

                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon:  Icon(Icons.arrow_drop_down,color: context.textTheme.headline6!.color),
                                focusColor: Colors.transparent,
                                dropdownColor: context.theme.backgroundColor,
                                // icon: Icon(Icons.arrow_drop_down),
                                style: TextStyle(color: context.textTheme.headline6!.color,fontWeight: FontWeight.w500,fontSize: 5),
                                value: dropdownValue,
                                items: <String>['Dog', 'Cat', 'Tiger', 'Lion'].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Row(
                                      children: [

                                        CircleAvatar(
                                          backgroundColor: const Color(0xffD9F0FC),radius: 17,child: AppIcon.etherumIcon(color: Colors.black),),
                                        5.0.addWSpace(),

                                        Text(
                                          value,
                                          style: TextStyle(color: context.textTheme.headline6!.color,fontWeight: FontWeight.w500,fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                          // const Spacer(),
                          Expanded(
                            flex: 2,
                            child: TextField(
                              controller: fromController,
                              textAlign: TextAlign.center,
                              showCursor: false,
                              style:  TextStyle(fontSize: 16,color: context.textTheme.headline6!.color,fontWeight: FontWeight.w700),
                              // Disable the default soft keybaord
                              keyboardType: TextInputType.none,
                            ),
                          ),

                          Text("MAX",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: context.isDarkMode ? const Color(0xff718096) : const Color(0xff4A5568)),)


                        ],
                      ).marginSymmetric(horizontal: 3),
                    ).marginSymmetric(horizontal: 10),
                    10.0.addHSpace(),
                  ],
                ),
              ).marginSymmetric(horizontal: 10),

              40.0.addHSpace(),
              NumPad(
                buttonSize: 50,
                buttonColor: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(0xff1A202C),
                iconColor: context.isDarkMode ? const Color(0xffF7FAFC) : const Color(0xff1A202C),
                controller: fromController,
                delete: () {
                  fromController.text = fromController.text.substring(0, fromController.text.length - 1);
                },
                // do something with the input numbers
                onSubmit: () {
                  debugPrint('Your code: ${fromController.text}');
                },
              ),

              20.0.addHSpace(),
              AppButton(onTap: (){
                Get.to(const ConvertConfirmScreen(),transition: Transition.rightToLeft);
              },title: "Preview Conversion"),
              20.0.addHSpace(),
            ],
          ),
        ),
      ),
    );
  }
}
