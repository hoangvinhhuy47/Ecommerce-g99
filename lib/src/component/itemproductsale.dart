import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../base/TextStyle/TextStyle.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ItemProductSale extends StatelessWidget {
  final String image;
  final String label;
  final String price;
  final String discountPrice;
  final String discountPercent;
  const ItemProductSale(
      {Key? key,
        required this.image,
        required this.label,
        required this.price,
        required this.discountPrice, required this.discountPercent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282.h,
      width: 165.w,
      decoration: BoxDecoration(
          color: colorWhite,
          border: Border.all(color: colorLight, width: 1),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150.h,
            width: 141.w,
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 133.h,
              width: 133.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain)),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
              width: 133.w,
              alignment: Alignment.centerLeft,
              child: textFieldBold(label, 12.sp, colorTextBlue)),
          SizedBox(
            height: 2.h,
          ),
          Container(
            width: 133.w,
            height: 12.h,
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 4,
              itemSize: 12.h,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
              },
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
              width: 133.w,
              alignment: Alignment.centerLeft,
              child: textFieldBold(price, 12.sp, colorBlue)),
          SizedBox(
            height: 8.h,
          ),
          Container(
              width: 133.w,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  textFieldOverLine(discountPrice, 10.sp, colorGrey),
                  textFieldBold(' '+discountPercent, 10.sp, colorRed),
                ],
              )),
        ],
      ),
    );
  }
}
