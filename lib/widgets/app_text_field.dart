import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTextField extends StatelessWidget {
  String? labelText;
  AppTextField({Key? key,required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: const  Color(0xff2D3748),width: 1.5),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
        child: TextFormField(
          style:  TextStyle(color: context.isDarkMode ? Colors.black : Colors.white,fontWeight: FontWeight.w700,fontSize: 16),
          decoration: InputDecoration(
              border: InputBorder.none,
              labelText: labelText ?? "",
              labelStyle: const TextStyle(color: Color(0xff969AA8),fontSize: 15,fontWeight: FontWeight.w500)
          ),
        ).marginSymmetric(horizontal: 10),
      ),
    ).marginSymmetric(horizontal: 24);
  }
}
