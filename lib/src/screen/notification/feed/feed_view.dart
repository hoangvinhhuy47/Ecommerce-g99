import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';

class FeedScreen extends StatelessWidget {
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
                children: [ViewHeader(context), ViewItemCenter(context)],
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
                  textFieldBold('Feed', 16.sp, colorTextBlue)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ViewItemCenter(BuildContext context) {
    return Container(
      width: 375.w,
      child: Column(
        children: [
          Container(
            height: 120.h,
            width: 375.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 76.w,
                  height: 120.h,
                  child: Container(
                    height: 70.w,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(IMG_HOME_PRODUCT),
                            fit: BoxFit.contain)),
                  ),
                ),
                Container(
                  height: 120.h,
                  width: 290.w,
                  child: Column(
                    children: [
                      Container(
                        height: 21.h,
                        width: 290.w,
                        alignment: Alignment.centerLeft,
                        child: textFieldBold('New Product', 14.sp, colorTextBlue),
                      ),
                      Container(height: 44.h,
                      width: 290.w,
                      child: textFieldRegular('Nike Air Zoom Pegasus 36 Miami - Special For your Activity', 12.sp, colorGrey),
                      ),
                      Container(
                        height: 21.h,
                        width: 290.w,
                        alignment: Alignment.centerLeft,
                        child: textFieldRegular('New Product', 10.sp, colorTextBlue),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 120.h,
            width: 375.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 76.w,
                  height: 120.h,
                  child: Container(
                    height: 70.w,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(IMG_HOME_PRODUCT),
                            fit: BoxFit.contain)),
                  ),
                ),
                Container(
                  height: 120.h,
                  width: 290.w,
                  child: Column(
                    children: [
                      Container(
                        height: 21.h,
                        width: 290.w,
                        alignment: Alignment.centerLeft,
                        child: textFieldBold('New Product', 14.sp, colorTextBlue),
                      ),
                      Container(height: 44.h,
                        width: 290.w,
                        child: textFieldRegular('Nike Air Zoom Pegasus 36 Miami - Special For your Activity', 12.sp, colorGrey),
                      ),
                      Container(
                        height: 21.h,
                        width: 290.w,
                        alignment: Alignment.centerLeft,
                        child: textFieldRegular('New Product', 10.sp, colorTextBlue),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 120.h,
            width: 375.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 76.w,
                  height: 120.h,
                  child: Container(
                    height: 70.w,
                    width: 70.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(IMG_HOME_PRODUCT),
                            fit: BoxFit.contain)),
                  ),
                ),
                Container(
                  height: 120.h,
                  width: 290.w,
                  child: Column(
                    children: [
                      Container(
                        height: 21.h,
                        width: 290.w,
                        alignment: Alignment.centerLeft,
                        child: textFieldBold('New Product', 14.sp, colorTextBlue),
                      ),
                      Container(height: 44.h,
                        width: 290.w,
                        child: textFieldRegular('Nike Air Zoom Pegasus 36 Miami - Special For your Activity', 12.sp, colorGrey),
                      ),
                      Container(
                        height: 21.h,
                        width: 290.w,
                        alignment: Alignment.centerLeft,
                        child: textFieldRegular('New Product', 10.sp, colorTextBlue),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
