import 'package:app_demo/src/assets/index.dart';
import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/screen/home/home_view.dart';
import 'package:app_demo/src/screen/index.dart';
import 'package:app_demo/src/screen/signup/signup_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../base/InputLoginComponent/InputLoginComponent.dart';
import '../../styles/colors.dart';
import 'package:transition/transition.dart';

class LoginScreen extends StatelessWidget {
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
            width: 375.w,
            height: 812.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderLogoScreen(context),
                  InputLogin(context),
                  SizedBox(height: 21.h,),
                  Container(
                    width: 375.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 1,
                          width: 134.w,
                          color: colorLight,
                        ),
                        textFieldBold('OR', 14.sp, colorGrey),
                        Container(
                          height: 1,
                          width: 134.w,
                          color: colorLight,
                        )
                      ],
                    ),
                  ),
                  LoginGoogle(context),
                  FogotPassWord(context)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget HeaderLogoScreen(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 1),
      width: 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 112.h,
          ),
          Container(
            height: 72.h,
            width: 72.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(IMG_LOGO_LOGIN), fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 16.h,
          ),
          textFieldBold('Welcome to E-com', 16.sp, colorTextBlue),
          SizedBox(
            height: 8.h,
          ),
          textFieldThin('Sign in to continue', 12.sp, colorGrey),
        ],
      ),
    );
  }

  Widget InputLogin(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28.h,
        ),
        InputLoginComponent(
          Iconprefix: IMG_EMAIL_LOGIN,
          isPassWord: false,
          hintText: 'Your Email',
        ),
        SizedBox(
          height: 8.h,
        ),
        InputLoginComponent(
          Iconprefix: IMG_PASSWORD_LOGIN,
          isPassWord: false,
          hintText: 'Password',
          // helperText: ' Oops! Your Password Is Not Correct ',
        ),
        SizedBox(
          height: 16.h,
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: MainApp(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                      curve: Curves.linear));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: colorBlue,
              ),
              height: 57.h,
              width: 343.w,
              alignment: Alignment.center,
              child: textFieldBold('Sign In', 14.sp, colorWhite),
            )),
      ],
    );
  }

  Widget LoginGoogle(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h,),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 57.h,
            width: 343.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: colorLight,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 16.w,
                  width: 16.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(IMG_GOOGLE_LOGIN),
                          fit: BoxFit.contain)),
                ),
                textFieldBold('Login with Google', 14.sp, colorGrey),
                Container(
                  height: 16.w,
                  width: 16.w,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          child: Container(

            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 57.h,
            width: 343.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: colorLight,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 16.w,
                  width: 16.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(IMG_FACEBOOK_LOGIN),
                          fit: BoxFit.contain)),
                ),
                textFieldBold('Login with facebook', 14.sp, colorGrey),
                Container(
                  height: 16.w,
                  width: 16.w,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget FogotPassWord(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 16.h,
        ),
        GestureDetector(
            child: textFieldBold('Forgot Password?', 16.sp, colorBlue)),
        SizedBox(
          height: 8.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                Transition(
                    child: SignUpScreen(),
                    transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                    curve: Curves.linear));
          },
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textFieldRegular('Don’t have a account?', 12.sp ,colorGrey),
                textFieldBold('Register', 13.sp, colorBlue),
              ],
            ),
          ),
        )
      ],
    );
  }
}
