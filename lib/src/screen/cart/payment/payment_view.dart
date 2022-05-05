import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';
import '../../../styles/colors.dart';
import 'package:transition/transition.dart';

class PaymentScreen extends StatelessWidget {
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
                      textFieldBold('Payment', 16.sp, colorTextBlue)
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
  Widget ViewDataCenter(BuildContext context){
    return Column(
      children: [
        Container(
          height: 56.h,
          width: 375.w,
          color: colorLight,
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ImageIcon(AssetImage(IMG_CREDITCARD),color: colorBlue,size: 18.w,)),
              textFieldBold('Credit Card Or Debit', 12.sp, colorTextBlue)
            ],
          ),
        ),
        Container(
          height: 56.h,
          width: 375.w,
          color: colorWhite,
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ImageIcon(AssetImage(IMG_Paypal),color: colorBlue,size: 18.w,)),
              textFieldBold('Paypal', 12.sp, colorTextBlue)
            ],
          ),
        ),
        Container(
          height: 56.h,
          width: 375.w,
          color: colorWhite,
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ImageIcon(AssetImage(IMG_BANK),color: colorBlue,size: 18.w,)),
              textFieldBold('Bank Transfer', 12.sp, colorTextBlue)
            ],
          ),
        ),
      ],
    );
  }
}
