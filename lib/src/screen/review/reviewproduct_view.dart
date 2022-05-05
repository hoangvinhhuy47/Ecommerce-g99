import 'package:app_demo/src/component/itemreviewproduct.dart';
import 'package:app_demo/src/screen/writereview/writereviewproduct_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transition/transition.dart';
import '../../assets/index.dart';
import '../../base/TextStyle/TextStyle.dart';

class ReviewProductScreen extends StatelessWidget {
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
              child: Stack(
                children: [
                  Column(
                    children: [
                      ViewHeader(context),
                      Container(
                          height: 690.h,
                          width: 375.w,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ViewChooseReview(context),
                                ViewReview(context),
                                SizedBox(
                                  height: 90.h,
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                  Positioned(
                      bottom: 33.h,
                      child: Container(
                        width: 375,
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: WriteReviewProduct(),
                                    transitionEffect:
                                        TransitionEffect.RIGHT_TO_LEFT,
                                    curve: Curves.linear));
                          },
                          child: Container(
                            height: 57.h,
                            width: 343.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: colorBlue,
                                borderRadius: BorderRadius.circular(5)),
                            child: textFieldBold(
                                'Write Review', 14.sp, colorWhite),
                          ),
                        ),
                      )),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25.h,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 15.h,
                          width: 15.w,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(IC_BACK),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      textFieldBold('5 Review', 16.sp, colorTextBlue)
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

  Widget ViewChooseReview(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 50.h,
            width: 343.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 50.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: colorBlue,
                    // gradient: LinearGradient(
                    //   colors: [
                    //     colorBlue,
                    //     colorWhite
                    //   ],
                    // )
                  ),
                  child: textFieldBold('All Review', 12.sp, colorTextBlue),
                ),
                Container(
                  height: 50.h,
                  width: 62.w,
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorGrey, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.w),
                      textFieldRegular('1', 12.sp, colorGrey)
                    ],
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 62.w,
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorGrey, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.w),
                      textFieldRegular('2', 12.sp, colorGrey)
                    ],
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 62.w,
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorGrey, width: 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.w),
                      textFieldRegular('3', 12.sp, colorGrey)
                    ],
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 62.w,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorGrey, width: 1)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.w),
                      textFieldRegular('4', 12.sp, colorGrey)
                    ],
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 62.w,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorGrey, width: 1)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.w),
                      textFieldRegular('5', 12.sp, colorGrey)
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

  Widget ViewReview(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          ItemReviewProduct(isImage: false),
          ItemReviewProduct(isImage: true),
          ItemReviewProduct(isImage: true),
          ItemReviewProduct(isImage: true),
          ItemReviewProduct(isImage: false),
        ],
      ),
    );
  }
}
