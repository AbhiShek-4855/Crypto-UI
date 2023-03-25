// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_icon.dart';

import '../blog_pages/blog_screen.dart';
import '../home_pages/home_screen.dart';
import '../profile_pages/profile_screen.dart';
import '../wallet_pages/wallet_screen.dart';
import 'landing_screen_controller.dart';

class LandingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    buildBottomNavigationMenu(BuildContext context, LandingScreenController landingScreenController) {
      return Obx(() => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: SizedBox(
              height: 90,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                // showUnselectedLabels: true,
                // elevation: 100,

                // showSelectedLabels: true,
                onTap: landingScreenController.changeTabIndex,
                currentIndex: landingScreenController.tabIndex.value,
                backgroundColor:context.theme.bottomNavigationBarTheme.backgroundColor,
                unselectedItemColor: context.theme.cardColor,
                selectedItemColor: const Color(0xff1586EC),
                // unselectedLabelStyle: unselectedLabelStyle,
                // selectedLabelStyle: selectedLabelStyle,

                items:  [ // favouriteUnselectedIcon
                  BottomNavigationBarItem(
                    icon: landingScreenController.tabIndex == 0 ? context.isDarkMode == false ?

                        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Stack(alignment: Alignment.bottomCenter, children: [AppIcon.barChatIcon(context),]), Stack(alignment: Alignment.bottomCenter, children: [AppIcon.indicatorIcon()])],)
                        :  Stack(
                        alignment: Alignment.center,
                        children: [AppIcon.rectangleIcon(), AppIcon.barChatIcon(context)]) : AppIcon.barChatIcon(context),
                    label: '',
                    // backgroundColor: AppColor.backGroundColor,
                  ),

                  BottomNavigationBarItem(
                    icon: landingScreenController.tabIndex == 1 ? context.isDarkMode == false ?  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(alignment: Alignment.topCenter, children: [AppIcon.walletIcon(context).marginOnly(top: 5), AppIcon.indicatorIcon().marginOnly(top: 27)],),
                        // Stack(
                        //     alignment: Alignment.bottomCenter,
                        //     children: [AppIcon.indicatorIcon()]),
                      ],
                    ) : Stack(
                        alignment: Alignment.center,
                        children: [AppIcon.rectangleIcon(), AppIcon.walletIcon(context)])  : AppIcon.walletIcon(context),
                    label: '',
                    // backgroundColor:  AppColor.backGroundColor,
                  ),

                  BottomNavigationBarItem(
                    icon: CircleAvatar(
                      radius: 30,
                      backgroundColor: context.theme.textTheme.headline6!.color,
                      child: AppIcon.exchangeIcon(context),
                    ),
                    label: '',
                    // backgroundColor: AppColor.backGroundColor,
                  ),

                  BottomNavigationBarItem(
                    icon:landingScreenController.tabIndex == 3 ?  context.isDarkMode == false ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            AppIcon.personIcon(context),
                          ],
                        ),
                        Stack(
                            alignment: Alignment.bottomCenter,
                            children: [AppIcon.indicatorIcon()]),
                      ],
                    )   :  Stack(
                        alignment: Alignment.center,
                        children: [
                          AppIcon.rectangleIcon(),
                          AppIcon.personIcon(context)
                        ])  : AppIcon.personIcon(context),
                    label: '',
                    // backgroundColor: AppColor.backGroundColor,
                  ),
                  BottomNavigationBarItem(
                    icon:landingScreenController.tabIndex == 4 ? context.isDarkMode == false ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(alignment: Alignment.bottomCenter, children: [AppIcon.squareIcon(context),],),
                        Stack(alignment: Alignment.bottomCenter, children: [AppIcon.indicatorIcon()]),
                      ],
                    ) : Stack(
                        alignment: Alignment.center,
                        children: [
                          AppIcon.rectangleIcon(),
                          AppIcon.squareIcon(context)
                        ])  : AppIcon.squareIcon(context),
                    label: '',
                    // backgroundColor: AppColor.backGroundColor,
                  ),
                ],
              ),
            ),
          )));
    }

    final LandingScreenController landingScreenController = Get.put(LandingScreenController());

    return Scaffold(
      key: homeScaffoldKey,
      backgroundColor: Colors.transparent,
      body: Scaffold(

        backgroundColor: context.theme.backgroundColor,
        bottomNavigationBar: buildBottomNavigationMenu(context, landingScreenController),
        body: Obx(() => IndexedStack(
          index: landingScreenController.tabIndex.value,
          children:  [
            const HomeScreen(),
            const WalletScreen(),
            Container(),
            const ProfileScreen(),
            const BlogScreen(),
          ],
        )
        ),
      ),
    );
  }
}
