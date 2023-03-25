import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_text_style.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../otp_pages/otp_screen.dart';
import '../sign_in_pages/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height : height / 5,),
            Text("Sign Up",style: AppTextStyle.appLogoText(context),),
            Container(
              height : height / 20,
            ),
            AppTextField(labelText: "Email/ Phone number",),
            19.0.addHSpace(),
            AppTextField(labelText: "Password",),
            19.0.addHSpace(),
            AppTextField(labelText: "Re-type Password",),
            53.0.addHSpace(),
            AppButton(title: "Sign Up",onTap: (){
              Get.to(const OtpScreen(),transition: Transition.rightToLeft);
            }),
            35.33.addHSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                 Text("Already Have An Account?",style: TextStyle(color: const Color(0xff718096),fontSize: 12,fontWeight: FontWeight.w500,fontFamily: AppAssets.fontFamily),),
                3.0.addWSpace(),
                GestureDetector(
                  onTap: (){
                    Get.offAll(const SignInScreen(),transition: Transition.rightToLeft);
                  },
                  child: SizedBox(
                      height: 50,
                      child: Center(child: Text("Sign In",style: TextStyle(color: context.isDarkMode ? Colors.black  : const Color(0xffD9F0FC)  ,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: AppAssets.fontFamily)))),
                )
              ],
            ),
            35.0.addHSpace(),
          ],
        ),
      ),
    );
  }
}
