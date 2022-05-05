import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/component/itemproduct.dart';
import 'package:app_demo/src/screen/favorite/favorite_view.dart';
import 'package:app_demo/src/screen/supperflashsale/supperflashsale_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart';
import '../../assets/index.dart';
import '../../component/itemcatoryhome.dart';
import '../../component/itemproductlist.dart';
import '../../styles/colors.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:transition/transition.dart';

import '../notification/notification_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: Container(
        height: 719.h,
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
                    OfferBaner(context),
                    Category(context),
                    FlashSale(context),
                    MegaSale(context),
                    ProductList(context)
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

  Widget OfferBaner(BuildContext context) {
    return Container(
      height: 270.h,
      width: 375.w,
      alignment: Alignment.center,
      child: Container(
        height: 206.h,
        width: 343.w,
        child: ImageSlideshow(
          height: 206.h,
          width: 343.w,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: (value) {},
          autoPlayInterval: 8000,
          isLoop: true,
          children: [
            Stack(
              children: [
                Container(
                  height: 206.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(
                              'lib/src/assets/images/img_banner.png'),
                          fit: BoxFit.contain)),
                ),
                Positioned(
                    top: 32.h,
                    left: 24.w,
                    child: textFieldRegular(
                        'Super Flash Sale \n50% Off', 24.sp, colorWhite)),
                Positioned(
                    top: 133.h,
                    left: 24.w,
                    child: SlideCountdownSeparated(
                      duration: const Duration(days: 2),
                    ))
              ],
            ),
            Container(
              height: 206.h,
              width: 343.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image:
                          AssetImage('lib/src/assets/images/img_banner1.png'),
                      fit: BoxFit.contain)),
            ),
            Container(
              height: 206.h,
              width: 343.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image:
                          AssetImage('lib/src/assets/images/img_banner2.png'),
                      fit: BoxFit.contain)),
            )
          ],
        ),
      ),
    );
  }

  Widget Category(BuildContext context) {
    return Container(
      width: 375.w,
      child: Column(
        children: [
          Container(
            width: 375.w,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldBold('Category', 14.sp, colorTextBlue),
                textFieldBold('More Category', 14.sp, colorBlue),
              ],
            ),
          ),
          Container(
            height: 120.h,
            width: 375.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemCatoryHome(
                    color: colorGrey,
                    label: 'Man Shirt',
                    image: 'lib/src/assets/images/img_manshirt.png'),
                ItemCatoryHome(
                    color: colorGrey,
                    label: 'Dress',
                    image: 'lib/src/assets/images/img_dress.png'),
                ItemCatoryHome(
                    color: colorGrey,
                    label: 'Man Work \nEquipment',
                    image: 'lib/src/assets/images/img_manwork.png'),
                ItemCatoryHome(
                    color: colorGrey,
                    label: 'Woman Bag',
                    image: 'lib/src/assets/images/img_woman.png'),
                ItemCatoryHome(
                    color: colorGrey,
                    label: 'Man Shirt',
                    image: 'lib/src/assets/images/img_manshirt.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget FlashSale(BuildContext context) {
    return Container(
      height: 280.h,
      width: 375.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 375.w,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldBold('Flash Sale', 14.sp, colorTextBlue),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          Transition(
                              child: SupperFlashSaleScreen(),
                              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                              curve: Curves.linear));
                    },
                    child: textFieldBold('See More', 14.sp, colorBlue)),
              ],
            ),
          ),
          Container(
            height: 240.h,
            width: 375.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemProduct(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProduct(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProduct(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget MegaSale(BuildContext context) {
    return Container(
      height: 280.h,
      width: 375.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 375.w,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textFieldBold('Mega Sale', 14.sp, colorTextBlue),
                textFieldBold('See More', 14.sp, colorBlue),
              ],
            ),
          ),
          Container(
            height: 240.h,
            width: 375.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ItemProduct(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProduct(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProduct(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget ProductList(BuildContext context) {
    return Container(
      width: 375.w,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.center,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 343.w,
                height: 206.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image:
                            AssetImage('lib/src/assets/images/img_banner.png'),
                        fit: BoxFit.contain)),
              ),
              Positioned(
                  top: 48.h,
                  left: 24.w,
                  child:
                      textFieldBold('Recomended\nProduct', 24.sp, colorWhite)),
              Positioned(
                  top: 136.h,
                  left: 24.w,
                  child: textFieldRegular(
                      'We recommend the best for you', 14.sp, colorWhite))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 375.w,
            height: (282).h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ItemProductList(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off'),
                ItemProductList(
                    image: IMG_HOME_PRODUCT,
                    label: 'FS - Nike Air Max 270 React...',
                    price: '299,43',
                    discountPrice: '534,33',
                    discountPercent: '24% Off')
              ],
            ),
          )
        ],
      ),
    );
  }
}
