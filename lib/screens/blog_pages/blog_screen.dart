import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modals/everything_modal.dart';
import '../blog_post_pages/blog_post_screen.dart';
import 'blog_screen_controller.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final blogScreenController = Get.put(BlogScreenController());

    List<String> forYouList = [
      "Everything",
      "Education",
      "Crypto Trends",
      "Arypto Trends",
      "Education",
      "Crypto Trends",
    ];

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar2(
        leading: IconButton(onPressed: (){},
            icon: AppIcon.listIcon(context),tooltip: "Notification"),
        appbarTitle: "For You",
        action: [
          Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(onPressed: () {}, icon: AppIcon.bellIcon(context),tooltip: "Notification"),
                Positioned(
                    left: 5,
                    right: -8,
                    top: 10,
                    // bottom: 10,
                    child: AppIcon.notificationDot())

              ])
        ],
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.0.addHSpace(),
            Obx(() {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(forYouList.length, (index) =>
                      GestureDetector(
                        onTap: (){
                          blogScreenController.onChangeIndex(index);
                        },
                        child: InkWell(
                          onTap: (){
                            blogScreenController.onChangeIndex(index);
                          },
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Text(forYouList[index], style: blogScreenController.selectedIndex.value == index
                                ?
                            TextStyle(color: context.textTheme.headline6!.color,fontSize: 17,fontWeight: FontWeight.w600)
                                :
                            TextStyle(color: context.isDarkMode ? const Color(0xff718096)  :  const Color(0xffA0AEC0),fontSize: 17,fontWeight: FontWeight.w500) ),
                          ).marginSymmetric(horizontal: 0),
                        ),
                      )),
                ).marginSymmetric(horizontal: 24),
              );
            }),

            ListView.builder(
                itemCount: everyThingList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Get.to(const BlogPostScreen(),transition: Transition.rightToLeft);
                },
                child: Container(
                  height: 310,
                  decoration: BoxDecoration(
                    color: context.isDarkMode ? Colors.white  : const Color(0xff2D3748),
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: context.isDarkMode ?  [
                      const BoxShadow(color: Color(0xffEEEFF1),blurRadius: 2,spreadRadius: 3)
                    ] : null
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Image.asset(everyThingList[index].image.toString())),
                        ],
                      ),
                      15.0.addHSpace(),
                      Text(everyThingList[index].title.toString(),style: TextStyle(color: context.textTheme.headline6!.color,fontSize: 19,fontWeight: FontWeight.w700),).marginSymmetric(horizontal: 20),

                      30.0.addHSpace(),
                      Text(everyThingList[index].dateTime.toString(),style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0) ,fontSize: 13,fontWeight: FontWeight.w400),).marginSymmetric(horizontal: 20),



                    ],
                  ),
                ).marginOnly(left: 24,right: 24,top: 5,bottom: 5),
              );
            })

          ],
        ),
      ),

    );
  }
}
