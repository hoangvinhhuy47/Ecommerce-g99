import 'package:app_demo/src/screen/notification/feed/feed_view.dart';
import 'package:app_demo/src/screen/notification/offer/offer_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart';
import '../../assets/index.dart';
import '../../base/TextStyle/TextStyle.dart';
import 'package:transition/transition.dart';

import 'activity/activity_view.dart';
class NotificationScreen extends StatelessWidget {
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
                  textFieldBold('Notification', 16.sp, colorTextBlue)
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: OfferScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              height: 56.h,
              width: 375.w,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                       ImageIcon(AssetImage(IMG_OFFER),color: colorBlue,size: 18.h,),
                        SizedBox(width: 19.w,),
                        textFieldBold('Offer', 12.sp, colorTextBlue)
                      ],
                    ),
                  ),
                  Badge(
                    badgeContent: textFieldRegular('2', 10.sp, colorWhite),
                  )
                ],
              ),

            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: FeedScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              height: 56.h,
              width: 375.w,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_FEED),color: colorBlue,size: 18.h,),
                        SizedBox(width: 19.w,),
                        textFieldBold('Feed', 12.sp, colorTextBlue)
                      ],
                    ),
                  ),
                  Badge(
                    badgeContent: textFieldRegular('2', 10.sp, colorWhite),
                  )
                ],
              ),

            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: ActivityScreen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              height: 56.h,
              width: 375.w,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_ACTIVITY),color: colorBlue,size: 18.h,),
                        SizedBox(width: 19.w,),
                        textFieldBold('Activity', 12.sp, colorTextBlue)
                      ],
                    ),
                  ),
                  Badge(
                    badgeContent: textFieldRegular('2', 10.sp, colorWhite),
                  )
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}

