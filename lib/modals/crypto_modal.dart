import 'package:crypto_ui/constant/app_icon.dart';
import 'package:flutter/material.dart';

class CryptoModal{
  String? cryptoName;
  String? cryptoPricePercentage;
  String? cryptoPrice;
  String? cryptoShortName;
  Widget? cryptoIcon;
  Color? backGroundColor;

  CryptoModal({this.backGroundColor,this.cryptoIcon,this.cryptoName,this.cryptoPrice,this.cryptoPricePercentage,this.cryptoShortName});

}

List<CryptoModal> cryptoList = [
  CryptoModal(
    backGroundColor: const Color(0xffFFE2E0),
    cryptoName: "Bitcoin",
    cryptoPrice: "\$6,020",
    cryptoPricePercentage: "+1.8%",
    cryptoShortName: "BTC",
    cryptoIcon: AppIcon.cryptoIcon()
  ),


  CryptoModal(
      backGroundColor: const Color(0xffD9F0FC),
      cryptoName: "Ethereum",
      cryptoPrice: "\$450",
      cryptoPricePercentage: "+1.8%",
      cryptoShortName: "ETH",
      cryptoIcon: AppIcon.etherumIcon()
  ),
  CryptoModal(
      backGroundColor: const Color(0xffD3DAF2),
      cryptoName: "Doge Coin",
      cryptoPrice: "\$0.678267",
      cryptoPricePercentage: "+2.34%",
      cryptoShortName: "DOGE",
      cryptoIcon: AppIcon.dogeIcon()
  ),
  CryptoModal(
      backGroundColor: const Color(0xffFFE594),
      cryptoName: "Gala Coin",
      cryptoPrice: "\$450",
      cryptoPricePercentage: "+2.34%",
      cryptoShortName: "GALA",
      cryptoIcon: AppIcon.galaIcon()
  ),
  CryptoModal(
      backGroundColor: const Color(0xffFFC3AB),
      cryptoName: "LTC",
      cryptoPrice: "\$450",
      cryptoPricePercentage: "+2.34%",
      cryptoShortName: "Litecoin",
      cryptoIcon: AppIcon.ltcIcon()
  ),
  CryptoModal(
      backGroundColor: const Color(0xffFFC3AB),
      cryptoName: "LTC",
      cryptoPrice: "\$450",
      cryptoPricePercentage: "+2.34%",
      cryptoShortName: "Litecoin",
      cryptoIcon: AppIcon.ltcIcon()
  ),
  CryptoModal(
      backGroundColor: const Color(0xffEBDF9F),
      cryptoName: "ADA",
      cryptoPrice: "\$450",
      cryptoPricePercentage: "+2.34%",
      cryptoShortName: "Cardano",
      cryptoIcon: AppIcon.adaIcon()
  ),
];


class SuggestionCryptoModal {
  String? shortName;
  String? fullName;
  String? price;
  String? percentageIncrease;
  Widget? icon;
  Color? backGroundColor;

  SuggestionCryptoModal({this.price,this.icon,this.fullName,this.percentageIncrease,this.shortName,this.backGroundColor});
}

List<SuggestionCryptoModal> suggestionCryptoList = [
  SuggestionCryptoModal(price: "\$4,083.84",fullName: "Ethereum",percentageIncrease: "+1.80%",shortName: "ETH",backGroundColor: Color(0xffD9F0FC),icon: AppIcon.cryptoIcon(color: Colors.black)),
  SuggestionCryptoModal(price: "\$54,417.80",fullName: "Bitcoin",percentageIncrease: "+1.20%",shortName: "BTC",backGroundColor: Color(0xffFFE2E0),icon: AppIcon.dogeIcon(color: Colors.black)),
  SuggestionCryptoModal(price: "\$0.678267",fullName: "Doge Coin",percentageIncrease: "+1.20%",shortName: "DOGE",backGroundColor: Color(0xffEDF2F7),icon: AppIcon.etherumIcon(color: Colors.black)),
  SuggestionCryptoModal(price: "\$0.128267",fullName: "Cardano Coin",percentageIncrease: "+1.20%",shortName: "ADA",backGroundColor: Color(0xffEBDF9F),icon: AppIcon.adaIcon(color: Colors.black)),
];

