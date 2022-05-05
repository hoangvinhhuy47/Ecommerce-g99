import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/component/itemproductsale.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_countdown/slide_countdown.dart';
import '../../assets/index.dart';
import 'package:transition/transition.dart';

class SupperFlashSaleScreen extends StatelessWidget {
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
                  Container(
                    height: 690.h,
                    width: 375.w,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16.h,
                          ),
                          ViewBanner(context),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ItemProductSale(
                                  image: IMG_HOME_PRODUCT,
                                  label: 'FS - Nike Air Max 270 React...',
                                  price: '299,43',
                                  discountPrice: '534,33',
                                  discountPercent: '24% Off'),
                              ItemProductSale(
                                  image: IMG_HOME_PRODUCT,
                                  label: 'FS - Nike Air Max 270 React...',
                                  price: '299,43',
                                  discountPrice: '534,33',
                                  discountPercent: '24% Off'),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ItemProductSale(
                                  image: IMG_HOME_PRODUCT,
                                  label: 'FS - Nike Air Max 270 React...',
                                  price: '299,43',
                                  discountPrice: '534,33',
                                  discountPercent: '24% Off'),
                              ItemProductSale(
                                  image: IMG_HOME_PRODUCT,
                                  label: 'FS - Nike Air Max 270 React...',
                                  price: '299,43',
                                  discountPrice: '534,33',
                                  discountPercent: '24% Off'),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ItemProductSale(
                                  image: IMG_HOME_PRODUCT,
                                  label: 'FS - Nike Air Max 270 React...',
                                  price: '299,43',
                                  discountPrice: '534,33',
                                  discountPercent: '24% Off'),
                              ItemProductSale(
                                  image: IMG_HOME_PRODUCT,
                                  label: 'FS - Nike Air Max 270 React...',
                                  price: '299,43',
                                  discountPrice: '534,33',
                                  discountPercent: '24% Off'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
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
                          height: 20.h,
                          width: 20.w,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(IC_BACK),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      textFieldBold('Super Flash Sale', 16.sp, colorTextBlue)
                    ],
                  ),
                ),
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(IC_BOTTOM_SEARCH),
                          fit: BoxFit.contain)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ViewBanner(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 206.h,
          width: 343.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: AssetImage('lib/src/assets/images/img_banner.png'),
                  fit: BoxFit.contain)),
        ),
        Positioned(
            top: 32.h,
            left: 24.w,
            child: textFieldRegular(
                'Super Flash Sale \n50% Off', 24.sp, colorWhite)),
        Positioned(
            top: 133.h,
            left: 24.w,
            child: SlideCountdownSeparated(
              duration: const Duration(days: 2),
            ))
      ],
    );
  }
}
