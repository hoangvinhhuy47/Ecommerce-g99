import 'package:app_demo/src/component/itemproductfavorite.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets/index.dart';
import '../../base/TextStyle/TextStyle.dart';

class FavoriteProduct extends StatelessWidget {
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
                  ViewProduct(context)
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
                              image: AssetImage(IC_BACK),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  textFieldBold('Favorite Product', 16.sp, colorTextBlue)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget ViewProduct (BuildContext context){
     return Container(
       height: 690.h,
       width: 375.w,
       child: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(height: 8.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 ItemProductFavorite(
                     image: IMG_HOME_PRODUCT,
                     label: 'FS - Nike Air Max 270 React...',
                     price: '299,43',
                     discountPrice: '534,33',
                     discountPercent: '24% Off'),
                 ItemProductFavorite(
                     image: IMG_HOME_PRODUCT,
                     label: 'FS - Nike Air Max 270 React...',
                     price: '299,43',
                     discountPrice: '534,33',
                     discountPercent: '24% Off'),
               ],
             ),
             SizedBox(height: 8.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 ItemProductFavorite(
                     image: IMG_HOME_PRODUCT,
                     label: 'FS - Nike Air Max 270 React...',
                     price: '299,43',
                     discountPrice: '534,33',
                     discountPercent: '24% Off'),
                 ItemProductFavorite(
                     image: IMG_HOME_PRODUCT,
                     label: 'FS - Nike Air Max 270 React...',
                     price: '299,43',
                     discountPrice: '534,33',
                     discountPercent: '24% Off'),
               ],
             ),
             SizedBox(height: 8.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 ItemProductFavorite(
                     image: IMG_HOME_PRODUCT,
                     label: 'FS - Nike Air Max 270 React...',
                     price: '299,43',
                     discountPrice: '534,33',
                     discountPercent: '24% Off'),
                 ItemProductFavorite(
                     image: IMG_HOME_PRODUCT,
                     label: 'FS - Nike Air Max 270 React...',
                     price: '299,43',
                     discountPrice: '534,33',
                     discountPercent: '24% Off'),
               ],
             )
           ],
         ),
       ),
     );
  }
}
