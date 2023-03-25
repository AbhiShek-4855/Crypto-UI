import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/utils/theme_services.dart';
import 'package:crypto_ui/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogPostScreen extends StatelessWidget {
  const BlogPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(leading: IconButton(onPressed: ThemeServices().switchTheme, icon: AppIcon.backIcon(context))),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(AppAssets.blogPostImage)),
            20.0.addHSpace(),
            Text("Crypto.com Celebrates Black Friday 2021",style: TextStyle(fontWeight: FontWeight.w700,color: context.theme.textTheme.headline6!.color,fontSize: 24),).marginSymmetric(horizontal: 20),

            8.0.addHSpace(),

            Text("Crypto Update . 5 min ago",style: TextStyle(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0) ,fontSize: 13,fontWeight: FontWeight.w400),).marginSymmetric(horizontal: 20),

            8.0.addHSpace(),


            Text("Time comes closer for those bad-news-conversations. You’re wondering if you should have done something to prevent the lose of jobs.\n\n\nYou think you did the best you could but in your mind there still are doubts. You over look the whole situation again.\n\n\nYou talk at home about it and you even consult some friends. They tell you that you should’t worry to much. Easier said then done.At home things are running smoothly. There are no problems between you and your spouse. You are able to keep work and private situation separated from each other.In the mean time days, weeks run by and D-days approaches.\n\n\nYou are starting to feel worser and worser.",style: TextStyle(color:context.theme.textTheme.headline6!.color ,fontSize: 13,fontWeight: FontWeight.w400),).marginSymmetric(horizontal: 20),

            8.0.addHSpace(),
          ],
        ),
      ),
    );
  }
}
