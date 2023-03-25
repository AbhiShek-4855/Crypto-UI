import 'package:crypto_ui/screens/landing_pages/landing_screen.dart';
import 'package:crypto_ui/screens/sign_up_pages/sign_up_screen.dart';
import 'package:crypto_ui/theme/app_text_style.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_assets.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
                height : height / 5,
            ),
            
            Text("Sign In",style: AppTextStyle.appLogoText(context),),
            Container(
              height : height / 20,
            ),
            // Container(
            //   height : height / 13,
            // ),

            AppTextField(
              labelText: "Email/ Phone number",
            ),

            17.0.addHSpace(),
            AppTextField(
              labelText: "Password",
            ),

            24.0.addHSpace(),

            AppButton(title: "Sign in",onTap: (){
              Get.offAll(LandingScreen(),transition: Transition.rightToLeft);
            }),

            27.0.addHSpace(),

            Row(
              children: [
                Expanded(child: Divider(color: context.theme.textTheme.headline2!.color,).marginSymmetric(horizontal: 10)),
                Text("Or Sign in with",style: TextStyle(color: context.theme.textTheme.headline2!.color,fontWeight: FontWeight.w400,fontFamily: AppAssets.fontFamily),),
                Expanded(child: Divider(color: context.theme.textTheme.headline2!.color,).marginSymmetric(horizontal: 10)),
              ],
            ).marginSymmetric(horizontal: 24),

            25.0.addHSpace(),

            GoogleSignButton(onTap: (){},),

            16.0.addHSpace(),

            AppButton(title: "Sign in with Apple",onTap: (){},color:  const Color(0xffE1E6EA),textColor: const Color(0xff030303)),

            32.0.addHSpace(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Don’t have an account ?",style: TextStyle(color: const Color(0xff718096,),fontFamily: AppAssets.fontFamily),),
                3.0.addWSpace(),
                GestureDetector(
                  onTap: (){
                    Get.offAll(const SignUpScreen(),transition: Transition.rightToLeft);
                  },
                    child: SizedBox(
                        height: 50,
                        child: Center(child: Text("Sign up",style: TextStyle(color: context.isDarkMode ? Colors.black  : const Color(0xffD9F0FC)  ,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: AppAssets.fontFamily)))))
              ],
            ),
            48.0.addHSpace(),
          ],
        ),
      ),
    );
  }
}
