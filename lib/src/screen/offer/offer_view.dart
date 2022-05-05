import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../base/TextStyle/TextStyle.dart';
import 'package:slide_countdown/slide_countdown.dart';
class OfferBottomScreen extends StatelessWidget {
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
                    SizedBox(
                      height: 12.h,
                    ),
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
          textFieldBold('Offer', 16.sp, colorTextBlue),
        ],
      ),
    );
  }

  Widget ViewCenter(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          Container(
            height: 80.h,
            width: 343.w,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: colorBlue,
                borderRadius: BorderRadius.circular(5)),
            child: textFieldBold('Use “MEGSL” Cupon For \nGet 90%off', 16.sp, colorWhite),
          ),
          SizedBox(height: 10.h,),
          Stack(
            children: [
              Container(
                height: 206.h,
                width: 343.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(
                            'lib/src/assets/images/img_banner.png'),
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
          ),
          SizedBox(height: 10.h,),
          Stack(
            children: [
              Container(
                width: 343.w,
                height: 206.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image:
                        AssetImage('lib/src/assets/images/img_banner.png'),
                        fit: BoxFit.contain)),
              ),
              Positioned(
                  top: 48.h,
                  left: 24.w,
                  child:
                  textFieldBold('Recomended\nProduct', 24.sp, colorWhite)),
              Positioned(
                  top: 136.h,
                  left: 24.w,
                  child: textFieldRegular(
                      'We recommend the best for you', 14.sp, colorWhite))
            ],
          ),
        ],
      ),
    );
  }
}
