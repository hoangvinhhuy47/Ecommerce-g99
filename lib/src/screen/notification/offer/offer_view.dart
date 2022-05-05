import 'package:app_demo/src/screen/notification/feed/feed_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart';

import 'package:transition/transition.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';
class OfferScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        builder: (child) {
          ScreenUtil.registerToBuild(context);
          return Scaffold(
            backgroundColor: colorWhite,
            body: Container(
              height: 812.h,
              width: 375.w,
              child: Column(
                children: [
                  ViewHeader(context),
                  ViewItemCenter(context)
                ],
              ),
            ),
          );
        });
  }
  Widget ViewHeader(BuildContext context) {
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
              height: 25.h,
              child: Row(
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
                  textFieldBold('Offer', 16.sp, colorTextBlue)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget ViewItemCenter(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          Container(
            height: 150.h,
            width: 375.w,
            child: Row(
              children: [
                Container(
                  width: 52.w,
                  height: 150.h,
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 25.w,
                    height: 25.w,
                    decoration:BoxDecoration(
                      image: DecorationImage(image: AssetImage(IMG_OFFER),fit: BoxFit.contain)
                    )
                  ),
                ),
                Container(
                  width: 307,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 21.h,
                        child: textFieldBold('The Best Title', 14.sp, colorTextBlue),
                      ),
                      Container(height: 66.h,
                      child: textFieldRegular('Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo', 12.sp, colorTextBlue),
                      ),
                      Container(
                        height: 15.h,
                        child: textFieldRegular('April 30, 2014 1:01 PM', 10.sp, colorTextBlue),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150.h,
            width: 375.w,
            child: Row(
              children: [
                Container(
                  width: 52.w,
                  height: 150.h,
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 25.w,
                      height: 25.w,
                      decoration:BoxDecoration(
                          image: DecorationImage(image: AssetImage(IMG_OFFER),fit: BoxFit.contain)
                      )
                  ),
                ),
                Container(
                  width: 307,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 21.h,
                        child: textFieldBold('The Best Title', 14.sp, colorTextBlue),
                      ),
                      Container(height: 66.h,
                        child: textFieldRegular('Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo', 12.sp, colorTextBlue),
                      ),
                      Container(
                        height: 15.h,
                        child: textFieldRegular('April 30, 2014 1:01 PM', 10.sp, colorTextBlue),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 150.h,
            width: 375.w,
            child: Row(
              children: [
                Container(
                  width: 52.w,
                  height: 150.h,
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 25.w,
                      height: 25.w,
                      decoration:BoxDecoration(
                          image: DecorationImage(image: AssetImage(IMG_OFFER),fit: BoxFit.contain)
                      )
                  ),
                ),
                Container(
                  width: 307,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 21.h,
                        child: textFieldBold('The Best Title', 14.sp, colorTextBlue),
                      ),
                      Container(height: 66.h,
                        child: textFieldRegular('Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo', 12.sp, colorTextBlue),
                      ),
                      Container(
                        height: 15.h,
                        child: textFieldRegular('April 30, 2014 1:01 PM', 10.sp, colorTextBlue),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}