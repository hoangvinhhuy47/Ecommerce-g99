import 'package:app_demo/src/component/itemproductalsolike.dart';
import 'package:app_demo/src/screen/review/reviewproduct_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets/index.dart';
import '../../base/TextStyle/TextStyle.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:transition/transition.dart';
import '../../component/itemreviewproduct.dart';

class ProductDetailScreen extends StatelessWidget {
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
                              SizedBox(
                                height: 8.h,
                              ),
                              OfferBaner(context),
                              ViewName(context),
                              ViewSize(context),
                              ViewColor(context),
                              ViewSpecification(context),
                              ViewReview(context),
                              ViewAlsoLike(context),
                              SizedBox(
                                height: 90.h,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      bottom: 33.h,
                      child: Container(
                        width: 375,
                        alignment: Alignment.center,
                        child: Container(height: 57.h,width: 343.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: colorBlue,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: textFieldBold('Add To Cart', 14.sp, colorWhite),
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
                          height: 12.h,
                          width: 8.w,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(IC_BACK),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      textFieldBold(
                          'Nike Air Max 270 Rea...', 16.sp, colorTextBlue)
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(IC_BOTTOM_SEARCH),
                              fit: BoxFit.contain)),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      height: 20.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(IC_MORE), fit: BoxFit.contain)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget OfferBaner(BuildContext context) {
    return Container(
      height: 270.h,
      width: 375.w,
      alignment: Alignment.center,
      child: Container(
        height: 238.h,
        width: 375.w,
        child: Hero(
          tag: 'image_mode',
          child: ImageSlideshow(
            height: 206.h,
            width: 343.w,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {},
            autoPlayInterval: 8000,
            isLoop: true,
            children: [
              Container(
                height: 206.h,
                width: 343.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('lib/src/assets/images/img_banner.png'),
                        fit: BoxFit.contain)),
              ),
              Container(
                height: 206.h,
                width: 343.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('lib/src/assets/images/img_banner1.png'),
                        fit: BoxFit.contain)),
              ),
              Container(
                height: 206.h,
                width: 343.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('lib/src/assets/images/img_banner2.png'),
                        fit: BoxFit.contain)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ViewName(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 343.w,
          height: 60.h,
          child: Row(
            children: [
              Container(
                width: 275.w,
                height: 60.h,
                child: textFieldBold(
                    'Nike Air Zoom Pegasus 36 Miami', 20.sp, colorTextBlue),
              ),
              SizedBox(
                width: 45.w,
              ),
              Container(
                width: 18.w,
                height: 16.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IMG_HOME_LOVE), fit: BoxFit.contain)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: 16.h,
          width: 343.w,
          alignment: Alignment.centerLeft,
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 4,
            itemSize: 16.w,
            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          height: 30.h,
          width: 343.w,
          alignment: Alignment.centerLeft,
          child: textFieldBold('299,43', 20.sp, colorBlue),
        ),
      ],
    );
  }

  Widget ViewSize(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 21.h,
            alignment: Alignment.centerLeft,
            child: textFieldBold('Select Size', 14.sp, colorTextBlue),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 50.h,
            width: 343.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 48.w,
                  height: 48.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorGrey, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: textFieldRegular('5', 14.sp, colorTextBlue),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 48.w,
                  height: 48.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorGrey, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: textFieldRegular('5', 14.sp, colorTextBlue),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 48.w,
                  height: 48.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorBlue, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: textFieldRegular('5', 14.sp, colorBlue),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 48.w,
                  height: 48.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorGrey, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: textFieldRegular('5', 14.sp, colorTextBlue),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 48.w,
                  height: 48.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorGrey, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: textFieldRegular('5', 14.sp, colorTextBlue),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 48.w,
                  height: 48.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: colorWhite,
                      border: Border.all(color: colorGrey, width: 1),
                      borderRadius: BorderRadius.circular(50)),
                  child: textFieldRegular('5', 14.sp, colorTextBlue),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 21.h,
            alignment: Alignment.centerLeft,
            child: textFieldBold('Select Color', 14.sp, colorTextBlue),
          ),
        ],
      ),
    );
  }

  Widget ViewColor(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12.h,
        ),
        Container(
          height: 50.h,
          width: 343.w,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 48.w,
                height: 48.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    // border: Border.all(color: colorGrey,width: 35.w),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 48.w,
                height: 48.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: colorWhite,
                    border: Border.all(color: Colors.red, width: 35.w),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 48.w,
                height: 48.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: colorTextBlue,
                    // border: Border.all(color: colorGrey,width: 10),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 48.w,
                height: 48.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    // border: Border.all(color: colorGrey,width: 10),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 48.w,
                height: 48.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    // border: Border.all(color: colorGrey,width: 10),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 48.w,
                height: 48.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    // border: Border.all(color: colorGrey,width: 10),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget ViewSpecification(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 21.h,
            alignment: Alignment.centerLeft,
            child: textFieldBold('Select Size', 14.sp, colorTextBlue),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            width: 343.w,
            height: 66.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldRegular('Shown:', 12.sp, colorTextBlue),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    textFieldRegular('Laser:', 12.sp, colorGrey),
                    textFieldRegular('Blue/Anthracite/Watermel', 12.sp, colorGrey),
                    textFieldRegular('on/White', 12.sp, colorGrey),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            width: 343.w,
            height: 22.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldRegular('Style:', 12.sp, colorTextBlue),
                textFieldRegular('CD0113-400', 12.sp, colorGrey),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: textFieldRegular('The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.', 12.sp, colorGrey),
          ),
        ],
      ),
    );
  }
  Widget ViewReview (BuildContext context){
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Container(
            width: 343.w,
            height: 22.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldBold('Review Product', 14.sp, colorTextBlue),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          Transition(
                              child: ReviewProductScreen(),
                              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                              curve: Curves.linear));
                    },
                    child: textFieldBold('See More', 14.sp, colorBlue)),
              ],
            ),
          ),
          Container(
            width: 343.w,
            height: 22.h,
            child: Row(
              children: [
            RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemSize: 16.w,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(width: 8.w,),
                textFieldBold('4.5', 10.sp, colorGrey),
                SizedBox(width: 3.w,),
                textFieldRegular('(5 Review)', 10.sp, colorGrey),
              ],
            ),
          ),

          ItemReviewProduct(isImage: false,)
        ],
      ),
    );
  }
  Widget ViewAlsoLike (BuildContext context){
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(height: 23.h,),
          Container(
            width: 343.w,
            child: textFieldBold('You Might Also Like',14.sp,colorTextBlue),
          ),
          SizedBox(height: 12.h,),
          Container(
            width: 343.w,
            height: 238.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemProductAlsoLike(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProductAlsoLike(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProductAlsoLike(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProductAlsoLike(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),

              ],
            ),
          )
        ],
      ),
    );
  }
}
