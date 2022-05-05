import 'package:app_demo/src/screen/account/account_view.dart';
import 'package:app_demo/src/screen/cart/cart/cart_view.dart';
import 'package:app_demo/src/screen/home/home_view.dart';
import 'package:app_demo/src/screen/offer/offer_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../assets/index.dart';
import '../base/TextStyle/TextStyle.dart';
import '../styles/colors.dart';
import 'explore/explore_view.dart';

class MainApp extends StatefulWidget {
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  int index = 0;
  Color colorActive = colorBlue;
  Color colorInActive = colorGrey;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        builder: (child) {
          ScreenUtil.registerToBuild(context);
          return Scaffold(
              backgroundColor: colorWhite,
              bottomNavigationBar: BottomSheetHome(context),
              body: index == 0
                  ? HomeScreen()
                  : index == 1
                      ? ExploreScreen()
                      : index == 2
                          ? CartScreen()
                          : index == 3
                              ? OfferBottomScreen()
                              : AccountScreen());
        });
  }

  Widget BottomSheetHome(BuildContext context) {
    return Container(
      height: 93.h,
      width: 375.w,
      alignment: Alignment.topCenter,
      color: colorWhite,
      child: Row(
        children: [
          IconBottom(context, IC_BOTTOM_HOME, 'Home',
              index == 0 ? colorActive : colorInActive, 0, false),
          IconBottom(context, IC_BOTTOM_SEARCH, 'Explore',
              index == 1 ? colorActive : colorInActive, 1, true),
          IconBottom(context, IC_BOTTOM_CART, 'Cart',
              index == 2 ? colorActive : colorInActive, 2, false),
          IconBottom(context, IC_BOTTOM_OFFER, 'Offer',
              index == 3 ? colorActive : colorInActive, 3, false),
          IconBottom(context, IC_BOTTOM_ACCOUNT, 'Account',
              index == 4 ? colorActive : colorInActive, 4, false)
        ],
      ),
    );
  }

  Widget IconBottom(BuildContext context, String image, String label,
      Color color, int value, bool notification) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (index != value) {
            index = value;
          }
        });
      },
      child: Container(
        height: 59.h,
        width: 75.w,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 25.w,
              width: 25.w,
              child: Stack(
                children: [
                  ImageIcon(
                    AssetImage(image),
                    size: 18.w,
                    color: color,
                  ),
                  // Offstage(
                  //   offstage: !notification,
                  //   child: Positioned(
                  //     top: 10.w,
                  //       right: 10.w,
                  //       child: Container(
                  //     height: 20.w,
                  //     width: 20.w,
                  //    decoration: BoxDecoration(
                  //      color: colorRed,
                  //      borderRadius: BorderRadius.circular(50),
                  //      border: Border.all(color: colorWhite,width: 2)
                  //    ),
                  //     alignment: Alignment.center,
                  //     child: textFieldRegular('2', 10.sp, colorWhite),
                  //   )),
                  // )
                ],
              ),
            ),
            textFieldRegular(label, 10.sp, color)
          ],
        ),
      ),
    );
  }
}
