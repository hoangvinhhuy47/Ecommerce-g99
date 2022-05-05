import 'package:app_demo/src/assets/index.dart';
import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemProductCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      height: 104.h,
      width: 343.w,
      decoration: BoxDecoration(
          border: Border.all(color: colorLight,width: 1),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          Container(
            width: 100.w,
            height: 104.h,
            alignment: Alignment.center,
            child: Container(
              height: 72.h,
              width: 72.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(IMG_HOME_PRODUCT),
                      fit: BoxFit.contain)),
            ),
          ),
          Container(
            width: 240.w,
            height: 104.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 240.w,
                  height: 36.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 36.h,
                        width: 158.w,
                        child: textFieldBold('Nike Air Zoom Pegasus 36 Miami', 12.sp, colorTextBlue),
                      ),
                      Container(
                        height: 36.h,
                        width: 50.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageIcon(AssetImage(IMG_HOME_LOVE),size: 18.w,color: colorGrey,),
                            ImageIcon(AssetImage(IC_DELETE),size: 18.w,color: colorGrey,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 24.h,
                  width: 240.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      textFieldBold('299,43', 12.sp, colorBlue),
                      Container(
                        height: 24.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: colorLight,width: 1),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 24.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                border: Border(right: BorderSide(color: colorLight,width: 1))
                              ),
                              alignment: Alignment.center,
                              child: textFieldBold('-', 15.sp, colorGrey),
                            ),
                            Container(
                              color: colorLight,
                              height: 24.h,
                              width: 40.w,
                              alignment: Alignment.center,
                              child: textFieldRegular('1', 12.sp, colorTextBlue),
                            ),
                            Container(
                              height: 24.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  border: Border(left: BorderSide(color: colorLight,width: 1))
                              ),
                              alignment: Alignment.center,
                              child: textFieldBold('+', 14.sp, colorGrey),
                            )
                          ],
                        ),
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
