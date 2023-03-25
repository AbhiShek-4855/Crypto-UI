import 'dart:math';

import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mrx_charts/mrx_charts.dart';
import '../../constant/app_assets.dart';
import '../../constant/app_icon.dart';
import '../withdraw_pages/with_draw_screen.dart';
import 'package:intl/intl.dart';


class BalanceScreen extends StatefulWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(
        leading: IconButton(onPressed: (){}, icon: AppIcon.backIcon(context)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxHeight: 400.0,
                maxWidth: 600.0,
              ),
              decoration: BoxDecoration(
                  color: context.isDarkMode ? const Color(0xffFFFFFF) : const Color(0xff2D3748),
                  boxShadow: context.isDarkMode ?  [
                    const BoxShadow(color: Color(0xffEFF0F1),spreadRadius: 2,blurRadius: 12)
                  ] : null,
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\$54,417.80",style: TextStyle(color: context.textTheme.headline6!.color,fontSize: 28,fontWeight: FontWeight.w700),),
                          8.0.addHSpace(),
                          Text("Current Balance",style: TextStyle(color: context.isDarkMode ? const Color(0xff718096) :  const Color(0xffA0AEC0),fontSize: 14,fontWeight: FontWeight.w500,fontFamily: AppAssets.fontFamily),),

                        ],
                      ),
                      Container(
                        height: 32,
                        width: 65,
                        decoration: BoxDecoration(color: const Color(0xffD9F0FC),borderRadius: BorderRadius.circular(22.47),),
                        child: const Center(child: Text("+2.45%",style: TextStyle(color: Color(0xff0D1118),fontWeight: FontWeight.w500,fontSize: 12),)),
                      )

                    ],
                  ),
                  20.0.addHSpace(),

                  Expanded(
                    child: Chart(
                      layers: layers(),
                      padding: const EdgeInsets.symmetric(horizontal: 30.0).copyWith(
                        bottom: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ).marginOnly(left: 24,right: 24),
            20.0.addHSpace(),

            balanceListTile(title: "Deposit",leadingIcon: AppIcon.plusIcon(context),suffixIcon: AppIcon.infoIcon(),context,onTap: (){}),
            15.0.addHSpace(),
            Divider(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),).marginSymmetric(horizontal: 20),
            15.0.addHSpace(),
            balanceListTile(title: "Withdraw",leadingIcon: AppIcon.removeIcon(context),suffixIcon: Container(),context,onTap: (){Get.to(const WithDrawScreen(),transition: Transition.rightToLeft);}),
            15.0.addHSpace(),
            Divider(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),).marginSymmetric(horizontal: 20),
            15.0.addHSpace(),
            balanceListTile(title: "Send",leadingIcon: AppIcon.sendIcon(context),suffixIcon: Container(),context,onTap: (){}),
            15.0.addHSpace(),
            Divider(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),).marginSymmetric(horizontal: 20),
            15.0.addHSpace(),
          ],
        ),
      ),
    );
  }

  List<ChartLayer> layers() {
    final from = DateTime(2021, 4);
    final to = DateTime(2021, 8);
    final frequency = (to.millisecondsSinceEpoch - from.millisecondsSinceEpoch) / 3.0;
    return [
      ChartHighlightLayer(
        shape: () => ChartHighlightLineShape<ChartLineDataItem>(
          backgroundColor:  Colors.transparent,
          currentPos: (item) => item.currentValuePos,
          radius: const BorderRadius.all(Radius.circular(8.0)),
          width: 20.0,
        ),
      ),
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: to.millisecondsSinceEpoch.toDouble(),
            min: from.millisecondsSinceEpoch.toDouble(),
            textStyle: TextStyle(
              color: context.isDarkMode ==  false ? Colors.white : Colors.black,
              fontSize: 10.0,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 100.0,
            max: 400.0,
            min: 0.0,
            textStyle: TextStyle(
              color: context.isDarkMode ==  false ? Colors.white : Colors.black,
              fontSize: 10.0,
            ),
          ),
        ),
        labelX: (value) => DateFormat('MMM').format(DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value.toInt().toString(),
      ),
      ChartLineLayer(
        items: List.generate(
          4,
              (index) => ChartLineDataItem(
            x: (index * frequency) + from.millisecondsSinceEpoch,
            value: Random().nextInt(380) + 20,
          ),
        ),
        settings:  ChartLineSettings(
          color: context.isDarkMode ? const Color(0xff8CD3F6) : const Color(0xffC1FFD7),
          thickness: 4.0,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipLineShape<ChartLineDataItem>(
          triangleSideLength: 20,
          backgroundColor: Colors.green,
          circleBackgroundColor: Colors.green,
          circleBorderColor:  Colors.green,
          circleSize: 4.0,
          circleBorderThickness: 2.0,
          currentPos: (item) => item.currentValuePos,
          onTextValue: (item) => '\$${item.value.toString()}',
          marginBottom: 6.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          radius: 6.0,
          textStyle:  TextStyle(
            color:  context.isDarkMode ==  false ? Colors.white : Colors.black,
            letterSpacing: 0.2,
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ];
  }

  Widget balanceListTile(BuildContext context,{required String title,required Widget leadingIcon , required Widget suffixIcon,required VoidCallback onTap}){
    return  GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          leadingIcon,
          10.0.addWSpace(),
          Text(title,style: TextStyle(color: context.theme.textTheme.headline6!.color,fontWeight: FontWeight.w600,fontSize: 18,fontFamily: AppAssets.fontFamily)),
          const Spacer(),
          suffixIcon
        ],
      ).marginSymmetric(horizontal: 20),
    );
  }

}
