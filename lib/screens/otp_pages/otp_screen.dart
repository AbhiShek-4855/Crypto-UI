import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/landing_pages/landing_screen.dart';
import 'package:crypto_ui/theme/app_text_style.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';



class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Column(
        children: [
          SizedBox(height: height / 25),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Center(child: Text("Enter OTP", style: AppTextStyle.appBarText(context),)),],),
              AppIcon.backIcon(context)
            ],
          ),
          SizedBox(height: height / 10),
          OTPTextField(
            length: 4,
            contentPadding: const EdgeInsets.all(23),
            // controller: otpScreenController.otpController,
            otpFieldStyle: OtpFieldStyle(
              borderColor: context.isDarkMode ? const Color(0xff2D3748) :const Color(0xffA0AEC0),
              // disabledBorderColor: const Color(0xffA0AEC0),
              backgroundColor:context.isDarkMode ? const Color(0xff2D3748) : const Color(0xffA0AEC0),
              enabledBorderColor: context.isDarkMode ? const Color(0xff2D3748) :const Color(0xffA0AEC0),
              focusBorderColor:context.isDarkMode ? const Color(0xff2D3748) : const Color(0xffA0AEC0),
            ),
            style: const TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),
            width: MediaQuery.of(context).size.width,
            fieldWidth: 56,
            outlineBorderRadius: 15,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {},
            onChanged: (value){
              // otpScreenController.code = value;
            },
          ).marginSymmetric(horizontal: 50),
          SizedBox(height: height / 20),
          Text("Don't receive  OTP?",style: TextStyle(color: const Color(0xff718096),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: AppAssets.fontFamily),),
          10.0.addHSpace(),
          Text("Request Again",style: TextStyle(color: context.isDarkMode ? Colors.black  : const Color(0xffD9F0FC)  ,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: AppAssets.fontFamily)),
          SizedBox(height: height / 15),
          AppButton(title: "Verify Now", onTap: (){
            Get.to( LandingScreen(),transition: Transition.rightToLeft);

          })
        ],
      ),
    );
  }
}
