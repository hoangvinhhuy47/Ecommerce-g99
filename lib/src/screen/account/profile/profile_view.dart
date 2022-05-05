import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../assets/index.dart';
import '../../../base/TextStyle/TextStyle.dart';
import '../../../styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProfileScreen extends StatelessWidget{
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
                    ViewCenter(context),
                    ItemProfile(context)
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
                      textFieldBold('Profile', 16.sp, colorTextBlue)
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
  Widget ViewCenter(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          Container(
            height: 128.h,
            width: 375.w,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  height: 70.h,
                  width: 70.w,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(IMG_ACCOUNT_REVIEW),fit: BoxFit.contain),
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                Container(
                  height: 128.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textFieldBold('Dominic Ovo',14.sp,colorTextBlue),
                      SizedBox(height: 10.h,),
                      textFieldRegular('@dominic_ovo', 12.sp, colorGrey)
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
  Widget ItemProfile(BuildContext context){
    return Container(
      width: 375.w,
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              width: 375.w,
              height: 54.h,
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_GENDER),size: 18.w,color: colorBlue,),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: textFieldBold('Gender', 12.sp, colorTextBlue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: textFieldRegular('Male', 12.sp, colorGrey),
                        ),
                        ImageIcon(AssetImage(IC_RIGHT),size: 15.w,color: colorGrey,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 375.w,
              height: 54.h,
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_CALENDAR),size: 18.w,color: colorBlue,),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: textFieldBold('Birthday', 12.sp, colorTextBlue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: textFieldRegular('12-12-2000', 12.sp, colorGrey),
                        ),
                        ImageIcon(AssetImage(IC_RIGHT),size: 15.w,color: colorGrey,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 375.w,
              height: 54.h,
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_EMAIL),size: 18.w,color: colorBlue,),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: textFieldBold('Email', 12.sp, colorTextBlue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: textFieldRegular('rex4dom@gmail.com', 12.sp, colorGrey),
                        ),
                        ImageIcon(AssetImage(IC_RIGHT),size: 15.w,color: colorGrey,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 375.w,
              height: 54.h,
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_PHONE),size: 18.w,color: colorBlue,),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: textFieldBold('Phone Number', 12.sp, colorTextBlue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: textFieldRegular('(307) 555-0133', 12.sp, colorGrey),
                        ),
                        ImageIcon(AssetImage(IC_RIGHT),size: 15.w,color: colorGrey,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 375.w,
              height: 54.h,
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ImageIcon(AssetImage(IMG_PASSWORD_LOGIN),size: 18.w,color: colorBlue,),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: textFieldBold('Change Password', 12.sp, colorTextBlue),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: textFieldRegular('•••••••••••••••••', 12.sp, colorGrey),
                        ),
                        ImageIcon(AssetImage(IC_RIGHT),size: 15.w,color: colorGrey,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}