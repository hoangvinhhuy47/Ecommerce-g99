import 'package:app_demo/src/assets/index.dart';
import 'package:app_demo/src/screen/account/order/order_view.dart';
import 'package:app_demo/src/screen/account/profile/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../base/TextStyle/TextStyle.dart';
import '../../styles/colors.dart';
import 'package:transition/transition.dart';

import 'address/address_view.dart';

class AccountScreen extends StatelessWidget {
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
                    ViewCenter(context),
                    SizedBox(
                      height: 16.h,
                    ),
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
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1, color: colorLight),
      )),
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          textFieldBold('Account', 16.sp, colorTextBlue),
        ],
      ),
    );
  }

  Widget ViewCenter(BuildContext context) {
    return Container(
      width: 375.w,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: ProfileScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              width: 375.w,
              height: 56.h,
              color: colorLight,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ImageIcon(AssetImage(IC_BOTTOM_ACCOUNT),
                        size: 18.w, color: colorBlue),
                  ),
                  textFieldBold('Profile', 12.sp, colorTextBlue),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: OrderScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              width: 375.w,
              height: 56.h,
              color: colorWhite,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ImageIcon(AssetImage(IMG_BAG),
                        size: 18.w, color: colorBlue),
                  ),
                  textFieldBold('Order', 12.sp, colorTextBlue),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: AddressScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              width: 375.w,
              height: 56.h,
              color: colorWhite,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ImageIcon(AssetImage(IMG_ADDRESS),
                        size: 18.w, color: colorBlue),
                  ),
                  textFieldBold('Address', 12.sp, colorTextBlue),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: 375.w,
            height: 56.h,
            color: colorWhite,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: ImageIcon(AssetImage(IMG_CREDITCARD),
                      size: 18.w, color: colorBlue),
                ),
                textFieldBold('Payment', 12.sp, colorTextBlue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
