import 'package:crypto_ui/screens/sign_in_pages/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_text_style.dart';
import '../landing_pages/landing_screen.dart';
import 'intro_pages_types/intro_screen_1.dart';
import 'intro_pages_types/intro_screen_2.dart';
import 'intro_pages_types/intro_screen_3.dart';
import 'intro_screen_controller.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introScreenController = Get.put(IntroScreenController());

    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Stack(
          children: [
            
            PageView(
              controller: introScreenController.pageController.value,
              onPageChanged: introScreenController.onChange,
              physics: const BouncingScrollPhysics(),
              children: const[
                IntroScreen1(),
                IntroScreen2(),
                IntroScreen3(),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Zollars", style: AppTextStyle.boldText(context),),

                GestureDetector(
                    onTap: () {
                      Get.offAll(const SignInScreen(),transition: Transition.rightToLeft);
                    },
                    child: Text("Skip", style: AppTextStyle.skipText(context),)),


                // GestureDetector(
                //     onTap: (){
                //       // Get.to(LoginScreen(),transition: Transition.rightToLeft);
                //     },
                //     child: const Text("Skip"))
              ],
            ).marginOnly(right: 24, left: 24, top: 50),



            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(() {
                    return Row(
                        children: List.generate(3, (index) =>
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: introScreenController.currentIndex.value == index ?  const Color(0xff40B5F0) : const Color(0xffBCC7EC),
                                  shape: BoxShape.circle
                              ),
                            ).marginAll(2))
                    );
                  }),

                  GestureDetector(
                    onTap: (){
                      introScreenController.currentIndex.value == 2 ? Get.offAll(const SignInScreen(),transition: Transition.rightToLeft) :  introScreenController.pageController.value.nextPage(duration: const Duration(seconds: 1), curve: Curves.linear);
                    },
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor:context.theme.bottomAppBarColor,
                      child: Center(
                        child: Text("Next",style: AppTextStyle.introButtonStyle(context)),
                      ),
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 34),
            ).marginOnly(bottom: 50)


          ],
        )
    );
  }
}
