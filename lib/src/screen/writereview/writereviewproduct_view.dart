import 'package:app_demo/src/component/itemreviewproduct.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../assets/index.dart';
import '../../base/TextStyle/TextStyle.dart';

class WriteReviewProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        builder: (child) {
          ScreenUtil.registerToBuild(context);
          return Scaffold(
            backgroundColor: colorWhite,
            body: Stack(
              children: [
                Container(
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
                                Container(
                                  width: 343.w,
                                  child: textFieldBold(
                                      'Please write Overall level of satisfaction with your shipping / Delivery Service',
                                      14.sp,
                                      colorTextBlue),
                                ),
                                ChooseReview(context),
                                ViewAddPhoto(context)
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Positioned(
                    bottom: 33.h,
                    child: Container(
                      width: 375,
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Container(height: 57.h,width: 343.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: colorBlue,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: textFieldBold('Add Review', 14.sp, colorWhite),
                        ),
                      ),
                    )),
              ],
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
                      textFieldBold('Write Review', 16.sp, colorTextBlue)
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

  Widget ChooseReview(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Container(
            width: 343,
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 4,
                  itemSize: 32.w,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                SizedBox(
                  width: 16.w,
                ),
                textFieldBold('4/5', 14.sp, colorGrey),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            width: 343.w,
            child: textFieldBold('Write Your Review', 14.sp, colorTextBlue),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 160.h,
            width: 343.w,
            child: TextFormField(
              maxLines: 10,
              style: TextStyle(
                color: colorTextBlue,
                fontSize: 12.w,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                fontFamily: 'Poppins',
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: colorLight,
                    width: 1,
                  ),
                ),
                contentPadding: const EdgeInsets.only(
                    left: 10, right: 5, top: 5, bottom: 5),
                hintText: 'Write your review here',
                border: OutlineInputBorder(),

                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.w,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget ViewAddPhoto(BuildContext context){
    return Container(
      alignment: Alignment.topLeft,
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 24.h,
          ),
          textFieldBold('Add Photo', 14.sp, colorTextBlue),
          SizedBox(height: 12.h,),
          Container(
            height: 72.w,
            width: 72.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: colorGrey,width: 1),
            ),
              child: textFieldRegular('+', 17.sp, colorGrey),
          )
        ],
      ),
    );
  }
}
