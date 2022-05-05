import 'package:app_demo/src/component/itemaddress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:transition/transition.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';
import '../../../styles/colors.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        SizedBox(height: 12.h,),
                        ViewCenter(context),
                        SizedBox(
                          height: 80.h,
                        )
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
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       Transition(
                  //           child: ShipToScreen(),
                  //           transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                  //           curve: Curves.linear));
                  // },
                  child: Container(
                    height: 57.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: colorBlue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: textFieldBold('Add Address', 14.sp, colorWhite),
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
                      textFieldBold('Address', 16.sp, colorTextBlue)
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
          ItemAddress(),
          ItemAddress(),
          ItemAddress(),
        ],
      ),
    );
  }
}
