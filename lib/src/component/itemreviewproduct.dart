import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../assets/index.dart';
class ItemReviewProduct extends StatelessWidget{
  final bool isImage;

  const ItemReviewProduct({Key? key, required this.isImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 293.h,
      margin: const EdgeInsets.only(top: 15),
      width: 343.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 48.h,
            width: 343.w,
            child: Row(
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(image:AssetImage(IMG_ACCOUNT_REVIEW),fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                SizedBox(width: 16.w,),
                Container(height: 48.h,
                child: Column(
                  children: [
                    textFieldBold('James Lawson', 14.sp, colorTextBlue),
                    SizedBox(height: 4.h,),
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
                  ],
                ),)
              ],
            ),
          ),
          Container(
            height: 110.h,
            alignment: Alignment.topLeft,
            child: textFieldRegular('air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.', 12.sp, colorGrey),
          ),
          Offstage(
            offstage: isImage,
            child: Container(
              height: 72.h,
              width: 343.w,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      height: 72.h,
                      width: 72.w,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(IMG_HOME_PRODUCT),fit: BoxFit.contain),
                      )
                  ),
                  Container(
                      height: 72.h,
                      width: 72.w,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(IMG_HOME_PRODUCT),fit: BoxFit.contain),
                      )
                  ),
                  Container(
                      height: 72.h,
                      width: 72.w,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(IMG_HOME_PRODUCT),fit: BoxFit.contain),
                      )
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 343.w,
            alignment: Alignment.topLeft,
            child: textFieldRegular('December 10, 2016', 10.sp, colorGrey),
          )
        ],
      ),
    );
  }
}