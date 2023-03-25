import 'package:crypto_ui/constant/app_assets.dart';
import 'package:crypto_ui/constant/app_icon.dart';
import 'package:crypto_ui/screens/convert_pages/convert_screen.dart';
import 'package:crypto_ui/utils/extension.dart';
import 'package:crypto_ui/widgets/app_app_bar.dart';
import 'package:crypto_ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mrx_charts/mrx_charts.dart';




class CoinTrendScreen extends StatefulWidget {
  const CoinTrendScreen({Key? key}) : super(key: key);

  @override
  State<CoinTrendScreen> createState() => _CoinTrendScreenState();
}

class _CoinTrendScreenState extends State<CoinTrendScreen> {

  bool whichCandleMock = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppAppBar(
        leading: AppIcon.backIcon(context),
        appbarTitle: "Bitcoin",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              constraints: const BoxConstraints(
                maxHeight: 400.0,
                maxWidth: 600.0,
              ),
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                  color: context.isDarkMode ? const Color(0xffFFFFFF) : const Color(0xff2D3748),
                  boxShadow: context.isDarkMode ?  [
                    const BoxShadow(color: Color(0xffEFF0F1),spreadRadius: 2,blurRadius: 12)
                  ] : null,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("\$56,403.00",style: TextStyle(color: context.textTheme.headline6!.color,fontSize: 28,fontWeight: FontWeight.w700),),
                          8.0.addHSpace(),
                          Text("+ 1.8%",style: TextStyle(color: context.isDarkMode ? const Color(0xff718096) :  const Color(0xffC1FFD7),fontSize: 14,fontWeight: FontWeight.w500),),

                        ],
                      ),
                      AppIcon.infoIcon()

                    ],
                  ),
                  20.0.addHSpace(),

                  Expanded(
                    child: Chart(
                      layers: layers(),
                      padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(
                        bottom: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ).marginOnly(left: 24,right: 24),

            20.0.addHSpace(),

            forWardListTile(
                onTap: (){
                  Get.to(const ConvertScreen(),transition: Transition.rightToLeft);
                },
                title: "Convert",context,subTitle: "Convert one coin to another coin"),
            20.0.addHSpace(),
            Divider(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),).marginSymmetric(horizontal: 20),
            20.0.addHSpace(),
            forWardListTile(title: "About",context,subTitle: "Send crypto to another wallet"),
            20.0.addHSpace(),

            Row(
              children: [
                Expanded(child: AppButton2(title: "Sell", onTap: (){})),
                Expanded(child: AppButton(title: "Buy", onTap: (){})),

              ],
            ),
            20.0.addHSpace(),
          ],
        ),
      ),
    );
  }

  Widget forWardListTile(BuildContext context,{String? title,String? subTitle,VoidCallback? onTap}){
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title ?? "",style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 21,fontWeight: FontWeight.w700,color: context.theme.textTheme.headline6!.color),),
              5.0.addHSpace(),
              Text(subTitle ?? "",style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 14,fontWeight: FontWeight.w400,color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0)),),
            ],
          ),
          Icon(Icons.arrow_forward,color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),)
        ],
      ).marginSymmetric(horizontal: 20),
    );
  }

  List<ChartLayer> layers() {
    whichCandleMock = !whichCandleMock;
    final double frequency =
        (DateTime(2017, 11).millisecondsSinceEpoch.toDouble() - DateTime(2017, 4).millisecondsSinceEpoch.toDouble()) / 4;
    final double frequencyData = frequency / 3;
    final double from = DateTime(2017, 4).millisecondsSinceEpoch.toDouble();
    return [
      ChartGridLayer(
        settings: ChartGridSettings(
          x: ChartGridSettingsAxis(
            color: context.isDarkMode ? const Color(0xffE9ECF9) : const Color(0xff4A5568),
            frequency: frequency,
            max: DateTime(2017, 11).millisecondsSinceEpoch.toDouble(),
            min: DateTime(2017, 4).millisecondsSinceEpoch.toDouble(),
          ),
          y: ChartGridSettingsAxis(
            color: context.isDarkMode ? const Color(0xffE9ECF9) : const Color(0xff4A5568),
            frequency: 3.0,
            max: 66.0,
            min: 48.0,
          ),
        ),
      ),
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: DateTime(2017, 11).millisecondsSinceEpoch.toDouble(),
            min: DateTime(2017, 4).millisecondsSinceEpoch.toDouble(),
            textStyle: TextStyle(
              color: context.isDarkMode ==  false ? Colors.white : Colors.black,
              fontSize: 10.0,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 3.0,
            max: 66.0,
            min: 48.0,
            textStyle: TextStyle(
              color: context.isDarkMode == false ? Colors.white : Colors.black,
              fontSize: 10.0,
            ),
          ),
        ),
        labelX: (value) => DateFormat('MMM yyyy')
            .format(DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value.toInt().toString(),
      ),
      ChartCandleLayer(
        items: whichCandleMock
            ? [
          _candleItem(Colors.green, 50.0, 52.0, 48.0, 53.0, from),
          _candleItem(
              Colors.red, 52.0, 54.0, 51.0, 57.0, from + frequencyData),
          _candleItem(Colors.red, 53.0, 56.0, 53.0, 56.0,
              from + 2 * frequencyData),
          _candleItem(Colors.green, 54.0, 56.0, 53.0, 58.0,
              from + 3 * frequencyData),
          _candleItem(Colors.green, 55.0, 57.0, 53.0, 58.0,
              from + 4 * frequencyData),
          _candleItem(Colors.green, 56.0, 58.0, 56.0, 58.0,
              from + 5 * frequencyData),
          _candleItem(Colors.red, 58.0, 60.0, 57.0, 61.0,
              from + 6 * frequencyData),
          _candleItem(Colors.green, 57.5, 59.0, 56.5, 60.3,
              from + 7 * frequencyData),
          _candleItem(Colors.green, 57.0, 59.0, 57.0, 60.0,
              from + 8 * frequencyData),
          _candleItem(Colors.red, 60.0, 62.0, 57.0, 61.0,
              from + 9 * frequencyData),
          _candleItem(Colors.green, 63.0, 65.0, 62.0, 66.0,
              from + 10 * frequencyData),
          _candleItem(Colors.green, 64.0, 66.0, 63.0, 66.0,
              from + 11 * frequencyData),
          _candleItem(Colors.red, 62.0, 64.0, 61.0, 64.0,
              from + 12 * frequencyData),
          _candleItem(Colors.green, 50.0, 52.0, 48.0, 53.0, from),
          _candleItem(
              Colors.red, 52.0, 54.0, 51.0, 57.0, from + frequencyData),
          _candleItem(Colors.red, 53.0, 56.0, 53.0, 56.0,
              from + 2 * frequencyData),
          _candleItem(Colors.green, 54.0, 56.0, 53.0, 58.0,
              from + 3 * frequencyData),
          _candleItem(Colors.green, 55.0, 57.0, 53.0, 58.0,
              from + 4 * frequencyData),
          _candleItem(Colors.green, 56.0, 58.0, 56.0, 58.0,
              from + 5 * frequencyData),
          _candleItem(Colors.red, 58.0, 60.0, 57.0, 61.0,
              from + 6 * frequencyData),
          _candleItem(Colors.green, 57.5, 59.0, 56.5, 60.3,
              from + 7 * frequencyData),
          _candleItem(Colors.green, 57.0, 59.0, 57.0, 60.0,
              from + 8 * frequencyData),
          _candleItem(Colors.red, 60.0, 62.0, 57.0, 61.0,
              from + 9 * frequencyData),
          _candleItem(Colors.green, 63.0, 65.0, 62.0, 66.0,
              from + 10 * frequencyData),
          _candleItem(Colors.green, 64.0, 66.0, 63.0, 66.0,
              from + 11 * frequencyData),
          _candleItem(Colors.red, 62.0, 64.0, 61.0, 64.0,
              from + 12 * frequencyData),
        ]
            : [
          _candleItem(Colors.red, 62.0, 64.0, 61.0, 64.0, from),
          _candleItem(
              Colors.green, 64.0, 66.0, 63.0, 66.0, from + frequencyData),
          _candleItem(Colors.green, 63.0, 65.0, 62.0, 66.0,
              from + 2 * frequencyData),
          _candleItem(Colors.red, 60.0, 62.0, 57.0, 61.0,
              from + 3 * frequencyData),
          _candleItem(Colors.green, 57.0, 59.0, 57.0, 60.0,
              from + 4 * frequencyData),
          _candleItem(Colors.green, 57.5, 59.0, 56.5, 60.3,
              from + 5 * frequencyData),
          _candleItem(Colors.red, 58.0, 60.0, 57.0, 61.0,
              from + 6 * frequencyData),
          _candleItem(Colors.green, 56.0, 58.0, 56.0, 58.0,
              from + 7 * frequencyData),
          _candleItem(Colors.green, 55.0, 57.0, 53.0, 58.0,
              from + 8 * frequencyData),
          _candleItem(Colors.green, 54.0, 56.0, 53.0, 58.0,
              from + 9 * frequencyData),
          _candleItem(Colors.red, 53.0, 56.0, 53.0, 56.0,
              from + 10 * frequencyData),
          _candleItem(Colors.red, 52.0, 54.0, 51.0, 57.0,
              from + 11 * frequencyData),
          _candleItem(Colors.green, 50.0, 52.0, 48.0, 53.0,
              from + 12 * frequencyData),
          _candleItem(Colors.red, 62.0, 64.0, 61.0, 64.0, from),
          _candleItem(
              Colors.green, 64.0, 66.0, 63.0, 66.0, from + frequencyData),
          _candleItem(Colors.green, 63.0, 65.0, 62.0, 66.0,
              from + 2 * frequencyData),
          _candleItem(Colors.red, 60.0, 62.0, 57.0, 61.0,
              from + 3 * frequencyData),
          _candleItem(Colors.green, 57.0, 59.0, 57.0, 60.0,
              from + 4 * frequencyData),
          _candleItem(Colors.green, 57.5, 59.0, 56.5, 60.3,
              from + 5 * frequencyData),
          _candleItem(Colors.red, 58.0, 60.0, 57.0, 61.0,
              from + 6 * frequencyData),
          _candleItem(Colors.green, 56.0, 58.0, 56.0, 58.0,
              from + 7 * frequencyData),
          _candleItem(Colors.green, 55.0, 57.0, 53.0, 58.0,
              from + 8 * frequencyData),
          _candleItem(Colors.green, 54.0, 56.0, 53.0, 58.0,
              from + 9 * frequencyData),
          _candleItem(Colors.red, 53.0, 56.0, 53.0, 56.0,
              from + 10 * frequencyData),
          _candleItem(Colors.red, 52.0, 54.0, 51.0, 57.0,
              from + 11 * frequencyData),
          _candleItem(Colors.green, 50.0, 52.0, 48.0, 53.0,
              from + 12 * frequencyData),
        ],
        settings: const ChartCandleSettings(),
      ),
    ];
  }

  static _candleItem(Color color, double min1, double max1, double min2,
      double max2, double x) {
    return ChartCandleDataItem(
      color: color,
      value1: ChartCandleDataItemValue(
        max: max1,
        min: min1,
      ),
      value2: ChartCandleDataItemValue(
        max: max2,
        min: min2,
      ),
      x: x,
    );
  }


}


// class CoinTrendScreen extends StatelessWidget {
//   const CoinTrendScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.theme.backgroundColor,
//       appBar: AppAppBar(
//         leading: AppIcon.backIcon(context),
//         appbarTitle: "Bitcoin",
//       ),
//       body: Column(
//         children: [
//           forWardListTile(
//               onTap: (){
//                 Get.to(const ConvertScreen(),transition: Transition.rightToLeft);
//               },
//               title: "Convert",context,subTitle: "Convert one coin to another coin"),
//           20.0.addHSpace(),
//           Divider(color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),).marginSymmetric(horizontal: 20),
//           20.0.addHSpace(),
//           forWardListTile(title: "About",context,subTitle: "Send crypto to another wallet"),
//           20.0.addHSpace(),
//
//           Row(
//             children: [
//               Expanded(child: AppButton2(title: "Sell", onTap: (){})),
//               Expanded(child: AppButton(title: "Buy", onTap: (){})),
//
//             ],
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   Widget forWardListTile(BuildContext context,{String? title,String? subTitle,VoidCallback? onTap}){
//     return GestureDetector(
//       onTap: onTap,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title ?? "",style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 21,fontWeight: FontWeight.w700,color: context.theme.textTheme.headline6!.color),),
//               5.0.addHSpace(),
//               Text(subTitle ?? "",style: TextStyle(fontFamily: AppAssets.fontFamily,fontSize: 14,fontWeight: FontWeight.w400,color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0)),),
//             ],
//           ),
//           Icon(Icons.arrow_forward,color: context.isDarkMode ? const Color(0xff4A5568) : const Color(0xffA0AEC0),)
//         ],
//       ).marginSymmetric(horizontal: 20),
//     );
//   }
//
// }
