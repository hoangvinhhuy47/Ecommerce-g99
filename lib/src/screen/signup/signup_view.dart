import 'package:app_demo/src/screen/login/login_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transition/transition.dart';
import '../../assets/index.dart';
import '../../base/InputLoginComponent/InputLoginComponent.dart';
import '../../base/TextStyle/TextStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      builder: (child){
        ScreenUtil.registerToBuild(context);
        return Scaffold(
          backgroundColor: colorWhite,
          body: Container(
            height: 812.h,
            width: 375.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 155.h,
                  ),
                  HeaderLogoScreen(context),
                  InputField(context),
                  HaveAccount(context)
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
      width: 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 72.w,
            width:72.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(IMG_LOGO_LOGIN), fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 16.h,
          ),
          textFieldBold('Let’s Get Started', 16.sp, colorTextBlue),
          SizedBox(
            height: 8.h,
          ),
          textFieldThin('Create an new account', 12.sp, colorGrey),
        ],
      ),
    );
  }
  Widget InputField(BuildContext context){
    return Column(
      children: [
        SizedBox(
          height: 28.h,
        ),
        InputLoginComponent(
          Iconprefix: IMG_ACCOUNT_SIGNUP,
          isPassWord: false,
          hintText: 'Full Name',
        ),
        SizedBox(
          height: 8.h,
        ),
        InputLoginComponent(
          Iconprefix: IMG_EMAIL_LOGIN,
          isPassWord: false,
          hintText: 'Your Email',
          // helperText: ' Oops! Your Password Is Not Correct ',
        ),
        SizedBox(
          height: 8.h,
        ),
        InputLoginComponent(
          Iconprefix: IMG_PASSWORD_LOGIN,
          isPassWord: true,
          hintText: 'Password',
          // helperText: ' Oops! Your Password Is Not Correct ',
        ),
        SizedBox(
          height: 8.h,
        ),
        InputLoginComponent(
          Iconprefix: IMG_PASSWORD_LOGIN,
          isPassWord: true,
          hintText: 'Password Again',
          // helperText: ' Oops! Your Password Is Not Correct ',
        ),
        SizedBox(height: 18.h,),
        GestureDetector(
            onTap: () {
              // FLoading.hide();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: colorBlue,
              ),
              height: 57.h,
              width: 343.w,
              alignment: Alignment.center,
              child: textFieldBold('Sign Up', 14.sp, colorWhite),
            )),
      ],
    );
  }
  Widget HaveAccount(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 24.h,),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                Transition(
                    child: LoginScreen(),
                    transitionEffect: TransitionEffect.LEFT_TO_RIGHT,
                    curve: Curves.linear));
          },
          child: Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textFieldRegular('have a account?', 12.sp, colorGrey),
                textFieldBold('Sign In', 13.sp, colorBlue),
              ],
            ),
          ),
        )
      ],
    );
  }
}
