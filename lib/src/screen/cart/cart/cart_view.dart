import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/screen/cart/shipto/shipto_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/itemproductcart.dart';
import 'package:transition/transition.dart';

class CartScreen extends StatelessWidget {
  String erro = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                        ViewProduct(context),
                        ViewCupon(context),
                        ViewTotalPrice(context),
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
          Positioned(
              bottom: 33.h,
              child: Container(
                width: 375.w,
                height: 57.h,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: ShipToScreen(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                            curve: Curves.linear));
                  },
                  child: Container(
                    height: 57.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: colorBlue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: textFieldBold('Check Out', 14.sp, colorWhite),
                  ),
                ),
              ))
        ],
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
          textFieldBold('Your Cart', 16.sp, colorTextBlue),
        ],
      ),
    );
  }

  Widget ViewProduct(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          ItemProductCart(),
          ItemProductCart(),
          ItemProductCart(),
        ],
      ),
    );
  }

  Widget ViewCupon(BuildContext context) {
    return Container(
      width: 343.w,
      child: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
          Container(
            width: 343.w,
            height: erro == '' ? 56.h : 86.h,
            child: TextFormField(
              maxLines: 2,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: colorTextBlue),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintText: 'Enter Cupon Code',
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Poppins',
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: colorLight, width: 0.1),
                  ),
                  suffixIcon: Container(
                    height: 56.h,
                    width: 87.w,
                    decoration: BoxDecoration(
                      color: colorBlue,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5)),
                    ),
                    alignment: Alignment.center,
                    child: textFieldBold('Apply', 12.sp, colorWhite),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget ViewTotalPrice(BuildContext context) {
    return Container(
      width: 343.w,
      height: 164.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: colorLight, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 300.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldRegular('Items (3)', 12.sp, colorGrey),
                textFieldRegular('598.86', 12.sp, colorTextBlue),
              ],
            ),
          ),
          Container(
            width: 300.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldRegular('Shipping', 12.sp, colorGrey),
                textFieldRegular('40.00', 12.sp, colorTextBlue),
              ],
            ),
          ),
          Container(
            width: 300.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldRegular('Import charges', 12.sp, colorGrey),
                textFieldRegular('128.00', 12.sp, colorTextBlue),
              ],
            ),
          ),
          Container(
            height: 1,
            width: 300.w,
            color: colorLight,
          ),
          Container(
            width: 300.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldBold('Total Price', 12.sp, colorTextBlue),
                textFieldBold('766.86', 12.sp, colorBlue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
