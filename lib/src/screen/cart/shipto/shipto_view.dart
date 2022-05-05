import 'package:app_demo/src/screen/cart/payment/payment_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';
import '../../../component/itemaddress.dart';
import '../../../styles/colors.dart';
import 'package:transition/transition.dart';
class ShipToScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            height: 812.h,
            width: 375.w,
            child: Column(
              children: [
                HeaderSearch(context),
                Container(
                  height: 597.h,
                  width: 375.w,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ViewDataCenter(context),
                        SizedBox(
                          height: 75.h,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 33.h,
              child: Container(
                width: 375.w,
                height: 57.h,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: PaymentScreen(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                            curve: Curves.linear));
                  },
                  child: Container(
                    height: 57.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: colorBlue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: textFieldBold('Next', 14.sp, colorWhite),
                  ),
                ),
              ))
        ],
      ),
    );
  }
  Widget HeaderSearch(BuildContext context) {
    return Container(
      height: 122.h,
      width: 375.w,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: colorLight),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 44.h,
          ),
          Container(
            width: 375.w,
            height: 25.h,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     GestureDetector(
                       onTap: () {
                         Navigator.pop(context);
                       },
                       child: Container(
                         height: 12.h,
                         width: 8.w,
                         margin: const EdgeInsets.only(right: 10),
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 image: AssetImage(IC_BACK), fit: BoxFit.contain)),
                       ),
                     ),
                     textFieldBold('Ship To', 16.sp, colorTextBlue)
                   ],
                 ),
                  ImageIcon(AssetImage(IC_PLUS),size: 24.w,color: colorBlue,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget ViewDataCenter(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          ItemAddress(),
          ItemAddress(),
          ItemAddress(),
        ],
      ),
    );
  }
}