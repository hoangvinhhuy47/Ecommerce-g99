import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/index.dart';
class ItemAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 240.h,
      width: 343.w,
      padding: const EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
      border: Border.all(color: colorLight,width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldBold('Priscekila', 14.sp, colorTextBlue),
          Container(
            height: 44.h,
            child: textFieldRegular('3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States', 12.sp, colorGrey),
          ),
          textFieldRegular('+99 1234567890', 12.sp, colorGrey),
          Row(
            children: [
              Container(
                height: 57.h,
                width: 77.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colorBlue,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: textFieldBold('Edit', 14.sp, colorWhite),
              ),
              SizedBox(width: 12.w,),
              ImageIcon(AssetImage(IC_DELETE),size: 14.w,color: colorGrey,)
            ],
          )
        ],
      ),
    );
  }
}