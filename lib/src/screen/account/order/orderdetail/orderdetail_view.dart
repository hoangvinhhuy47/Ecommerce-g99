import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../assets/index.dart';
import '../../../../base/TextStyle/TextStyle.dart';
import '../../../../component/itemproductorderdetail.dart';
import '../../../../styles/colors.dart';
import 'package:transition/transition.dart';
class OrderDetailScreen extends StatelessWidget {
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
                        ProcessOrder(context),
                        ViewProduct(context),
                        ViewShippingDetail(context),
                        ViewPayment(context),
                        SizedBox(height: 80.h,)
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
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       Transition(
                  //           child: ShipToScreen(),
                  //           transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                  //           curve: Curves.linear));
                  // },
                  child: Container(
                    height: 57.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: colorBlue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: textFieldBold('Notify Me', 14.sp, colorWhite),
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
              child: Row(
                children: [
                  Row(
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
                      textFieldBold('Order Detail', 16.sp, colorTextBlue)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget ProcessOrder (BuildContext context){
    return Container(
      width: 375.w,
      height: 98.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(IC_CHECK),fit: BoxFit.contain)
                ),
              ),
              Container(
                height: 1,
                width: 72.w,
                color: colorBlue,
              ),
              Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(IC_CHECK),fit: BoxFit.contain)
                ),
              ),
              Container(
                height: 1,
                width: 72.w,
                color: colorBlue,
              ),
              Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(IC_CHECK),fit: BoxFit.contain)
                ),
              ),
              Container(
                height: 1,
                width: 72.w,
                color: colorBlue,
              ),
              Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(IC_UNCHECK),fit: BoxFit.contain)
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             textFieldRegular('Packing', 12.sp, colorGrey),
              textFieldRegular('Shipping', 12.sp, colorGrey),
              textFieldRegular('Arriving', 12.sp, colorGrey),
              textFieldRegular('Success', 12.sp, colorGrey),

            ],
          ),
        ],
      ),
    );
  }
  Widget ViewProduct(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           width: 375.w,
           alignment: Alignment.centerLeft,
           padding: const EdgeInsets.only(left: 10),
           child:  textFieldBold('Product', 14.sp, colorTextBlue),
         ),
          SizedBox(
            height: 12.h,
          ),
          ItemProductOrderDetail(),
          ItemProductOrderDetail(),
        ],
      ),
    );
  }
  Widget ViewShippingDetail(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          SizedBox(height: 24.h,),
          Container(
            width: 375.w,
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child:  textFieldBold('Shipping Details', 14.sp, colorTextBlue),
          ),
          SizedBox(height: 12.h,),
          Container(
            height: 179.h,
            width: 343.w,
            padding: const EdgeInsets.only(left: 5,right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: colorLight,width: 1)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 343.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textFieldRegular('Date Shipping', 12.sp, colorGrey),
                    textFieldRegular('January 16, 2020', 12.sp, colorTextBlue),
                  ],
                ),
                ),
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      textFieldRegular('Shipping', 12.sp, colorGrey),
                      textFieldRegular('POS Reggular', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      textFieldRegular('No. Resi', 12.sp, colorGrey),
                      textFieldRegular('000192848573', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      textFieldRegular('Address', 12.sp, colorGrey),
                      textFieldRegular('2727 New  Owerri, Owerri, \nImo State 78410', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget ViewPayment (BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          SizedBox(height: 45.h,),
          Container(
            width: 375.w,
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: textFieldBold('Payment Details', 14.sp, colorTextBlue),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 164.h,
            width: 343.w,
            padding: const EdgeInsets.only(left: 5,right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: colorLight,width: 1)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Items (3)', 12.sp, colorGrey),
                      textFieldRegular('598.86', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Shipping', 12.sp, colorGrey),
                      textFieldRegular('598.86', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldRegular('Import charges', 12.sp, colorGrey),
                      textFieldRegular('598.86', 12.sp, colorTextBlue),
                    ],
                  ),
                ),
                Container(width: 343.w,
                height: 1,
                  color: colorLight,
                ),
                Container(width: 343.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textFieldBold('Total Price', 12.sp, colorTextBlue),
                      textFieldRegular('598.86', 12.sp, colorBlue),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
