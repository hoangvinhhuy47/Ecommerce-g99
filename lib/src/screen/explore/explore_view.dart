import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transition/transition.dart';
import 'package:badges/badges.dart';
import '../../assets/index.dart';
import '../../component/itemcatoryhome.dart';
import '../../styles/colors.dart';
import '../favorite/favorite_view.dart';
import '../notification/notification_view.dart';
import 'package:searchfield/searchfield.dart';
class ExploreScreen extends StatelessWidget{
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
                    ViewCategory(context)
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
      child: Column(
        children: [
          SizedBox(
            height: 44.h,
          ),
          Container(
            height: 78.h,
            width: 375.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: colorLight),
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 46.h,
                  width: 243.w,
                  child: TextFormField(
                    enableSuggestions: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: colorLight,
                            width: 1,
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12.w,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'IBMPlex',
                        ),
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12.w,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'IBMPlex',
                        ),
                        hintText: 'Search Product',
                        prefixIconConstraints:
                        BoxConstraints(maxHeight: 48.h, maxWidth: 50.w),
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          child: ImageIcon(
                            AssetImage(IC_BOTTOM_SEARCH),
                            size: 15.h,
                            color: colorBlue,
                          ),
                        )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: FavoriteProduct(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                            curve: Curves.linear));
                  },
                  child: Badge(
                    toAnimate: true,
                    badgeContent: Text(
                      '3',
                      style: TextStyle(color: colorWhite, fontSize: 8),
                    ),
                    child: Container(
                      height: 16.h,
                      width: 18.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(IMG_HOME_LOVE),
                              fit: BoxFit.contain)),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        Transition(
                            child: NotificationScreen(),
                            transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                            curve: Curves.linear));
                  },
                  child: Container(
                    height: 16.h,
                    width: 18.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(IMG_HOME_NOTIFICATION),
                            fit: BoxFit.contain)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget ViewCategory(BuildContext context){
    return Container(
      width: 343.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textFieldBold('Man Fashion', 14.sp, colorTextBlue),
          Container(width: 343.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ItemCatoryHome(
                  color: colorBlue,
                  label: 'Man Shirt',
                  image: 'lib/src/assets/images/img_manshirt.png'),
              ItemCatoryHome(
                  color: colorBlue,
                  label: 'Dress',
                  image: 'lib/src/assets/images/img_dress.png'),
              ItemCatoryHome(
                  color: colorBlue,
                  label: 'Man Work \nEquipment',
                  image: 'lib/src/assets/images/img_manwork.png'),
              ItemCatoryHome(
                  color: colorBlue,
                  label: 'Woman Bag',
                  image: 'lib/src/assets/images/img_woman.png'),
            ],
          ),
          ),
          SizedBox(height: 12.h,),
          Container(width: 343.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemCatoryHome(
                    color: colorBlue,
                    label: 'Man Shirt',
                    image: 'lib/src/assets/images/img_manshirt.png'),
              ],
            ),
          ),
          SizedBox(height: 24.h,),
          textFieldBold('Woman Fashion', 14.sp, colorTextBlue),
          Container(width: 343.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemCatoryHome(
                    color: colorBlue,
                    label: 'Man Shirt',
                    image: 'lib/src/assets/images/img_manshirt.png'),
                ItemCatoryHome(
                    color: colorBlue,
                    label: 'Dress',
                    image: 'lib/src/assets/images/img_dress.png'),
                ItemCatoryHome(
                    color: colorBlue,
                    label: 'Man Work \nEquipment',
                    image: 'lib/src/assets/images/img_manwork.png'),
                ItemCatoryHome(
                    color: colorBlue,
                    label: 'Woman Bag',
                    image: 'lib/src/assets/images/img_woman.png'),
              ],
            ),
          ),
          SizedBox(height: 12.h,),
          Container(width: 343.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemCatoryHome(
                    color: colorBlue,
                    label: 'Man Shirt',
                    image: 'lib/src/assets/images/img_manshirt.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}