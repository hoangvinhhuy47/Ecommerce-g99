import 'package:app_demo/src/screen/account/order/orderdetail/orderdetail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';
import '../../../styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transition/transition.dart';
class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    ViewCenter(context)
                  ],
                ),
              ),
            )
          ],
        ),
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
                                  image: AssetImage(IC_BACK),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      textFieldBold('Order', 16.sp, colorTextBlue)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget ViewCenter(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: OrderDetailScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 5,right: 5),
              height: 201.h,
              width: 344.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: colorLight,width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textFieldBold('LQNSU346JK', 17.sp, colorTextBlue),
                  textFieldRegular('Order at E-comm : August 1, 2017', 12.sp, colorGrey),
                  Container(
                    height: 1,
                    width: 344.w,
                    color: colorLight,
                  ),
                  Container(
                    width: 344.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFieldRegular('Order Status', 12.sp, colorGrey),
                        textFieldRegular('Shipping', 12.sp, colorTextBlue),
                      ],
                    ),
                  ),
                  Container(
                    width: 344.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFieldRegular('Item', 12.sp, colorGrey),
                        textFieldRegular('2 Items purchased', 12.sp, colorTextBlue),
                      ],
                    ),
                  ),
                  Container(
                    width: 344.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFieldRegular('Price', 12.sp, colorGrey),
                        textFieldBold('299,43', 12.sp, colorBlue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 5,right: 5),
            height: 201.h,
            width: 344.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: colorLight,width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textFieldBold('LQNSU346JK', 17.sp, colorTextBlue),
                textFieldRegular('Order at E-comm : August 1, 2017', 12.sp, colorGrey),
                Container(
                  height: 1,
                  width: 344.w,
                  color: colorLight,
                ),
                Container(
                  width: 344.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Order Status', 12.sp, colorGrey),
                      textFieldRegular('Shipping', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(
                  width: 344.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Item', 12.sp, colorGrey),
                      textFieldRegular('2 Items purchased', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(
                  width: 344.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Price', 12.sp, colorGrey),
                      textFieldBold('299,43', 12.sp, colorBlue),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 5,right: 5),
            height: 201.h,
            width: 344.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: colorLight,width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textFieldBold('LQNSU346JK', 17.sp, colorTextBlue),
                textFieldRegular('Order at E-comm : August 1, 2017', 12.sp, colorGrey),
                Container(
                  height: 1,
                  width: 344.w,
                  color: colorLight,
                ),
                Container(
                  width: 344.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Order Status', 12.sp, colorGrey),
                      textFieldRegular('Shipping', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(
                  width: 344.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Item', 12.sp, colorGrey),
                      textFieldRegular('2 Items purchased', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(
                  width: 344.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Price', 12.sp, colorGrey),
                      textFieldBold('299,43', 12.sp, colorBlue),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
