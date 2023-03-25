import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/screens/profile_pages/profile_screen_controller.dart';
import 'package:crypto_ui/screens/sign_in_pages/sign_in_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_icon.dart';
import '../../modals/crypto_modal.dart';
import '../../widgets/app_app_bar.dart';
import '../../widgets/app_button.dart';
import '../scan_pages/scan_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProfileScreenController profileScreenController = Get.put(ProfileScreenController());
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar2(
        leading: IconButton(
            onPressed: (){
              Get.to(const ScanScreen(),transition: Transition.rightToLeft);
            },
            icon: AppIcon.scanneIcon(context)),
        appbarTitle: "profile",
        action: [IconButton(onPressed: () {}, icon: AppIcon.bellIcon(context))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.0.addHSpace(),
            Row(
              children: [
                Image.asset(AppAssets.profileImage),
                5.0.addWSpace(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Shahin Alam", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700, color: context.theme.textTheme.headline6!.color),),
                    const Text("@Uidesigner", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffA0AEC0)),)
                  ],
                ),
                const Spacer(),
                AppIcon.iconPath(
                    color: context.isDarkMode == false
                        ? const Color(0xffA0AEC0)
                        : Colors.black)
              ],
            ).marginSymmetric(horizontal: 24),
            30.0.addHSpace(),
            Text("My Coins", style: TextStyle(color: context.isDarkMode ? Colors.black : const Color(0xffA0AEC0), fontWeight: FontWeight.w600, fontSize: 14),).marginSymmetric(horizontal: 24),
            10.0.addHSpace(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    suggestionCryptoList.length,
                    (index) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 48,
                          decoration: BoxDecoration(
                              color: suggestionCryptoList[index].backGroundColor,
                            borderRadius: BorderRadius.circular(15)
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: suggestionCryptoList[index].icon,
                          ),
                          5.0.addWSpace(),
                          Text(suggestionCryptoList[index].fullName.toString(),style:  TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600,fontFamily: AppAssets.fontFamily),)
                        ],
                      ),
                        ).marginOnly(left: 11,right: 2)),
              ).marginOnly(left: 13,right: 13),
            ),
            30.0.addHSpace(),
            Text("Options", style: TextStyle(color: context.isDarkMode ? Colors.black : const Color(0xffA0AEC0), fontWeight: FontWeight.w600, fontSize: 14),).marginSymmetric(horizontal: 24),
            22.0.addHSpace(),

            optionListTile(context,icon: AppIcon.settingsIcon(context),text: "Setting",backColor: context.isDarkMode ? const Color(0xffF0D9FF) : const Color(0xff2D3748),suffix: Icon(Icons.arrow_forward_ios,color: context.theme.textTheme.headline6!.color,size: 14,)),
            18.0.addHSpace(),
            optionListTile(context,icon: AppIcon.sidebarIcon(context),text: "My Referral ID",backColor: context.isDarkMode ? const Color(0xffF5E8C7) : const Color(0xff2D3748),suffix: messageListTile(context,title: "2 New" )),
            18.0.addHSpace(),
            optionListTile(context,icon: AppIcon.giftIcon(context),text: "My Gift Card",backColor: context.isDarkMode ? const Color(0xffC9E4C5) : const Color(0xff2D3748),suffix: messageListTile(context,title: "3 New" )),
            18.0.addHSpace(),
            optionListTile(context,icon: AppIcon.themeIcon(context),text: "Theme Change",backColor: context.isDarkMode ? const Color(0xffF0D9FF) : const Color(0xff2D3748),
                suffix: CupertinoSwitch(value: profileScreenController.theme.value, onChanged: profileScreenController.changeTheme)
            ),


            30.0.addHSpace(),
            AppButton2(
              onTap: (){
              Get.offAll(const SignInScreen(),transition: Transition.rightToLeft);
            },title: "Log Out"),
            30.0.addHSpace(),
          ],
        ),
      ),
    );
  }

  Widget optionListTile(BuildContext context,{Color? backColor,required String text,required Widget icon,required Widget suffix}){
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: backColor,
          child: icon,
        ),
        5.0.addWSpace(),
        Text(text,style: TextStyle(color: context.theme.textTheme.headline6!.color),),
        const Spacer(),
        suffix
      ],
    ).marginSymmetric(horizontal: 24);
  }

  Widget messageListTile(BuildContext context,{required String title}){
    return Container(
      height: 30,
      width: 71.82,
      decoration: BoxDecoration(
        color: context.isDarkMode  ? const Color(0xffD9F0FC) : const Color(0xffD9F0FC),
        borderRadius: BorderRadius.circular(11)
      ),
      child: Center(child: Text(title,style: const TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),)),
    );
  }


}
