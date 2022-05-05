import 'package:app_demo/src/screen/detail/productdetail_view.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:transition/transition.dart';
import '../base/TextStyle/TextStyle.dart';

class ItemProductAlsoLike extends StatelessWidget {
  final String image;
  final String label;
  final String price;
  final String discountPrice;
  final String discountPercent;

  const   ItemProductAlsoLike(
      {Key? key,
        required this.image,
        required this.label,
        required this.price,
        required this.discountPrice, required this.discountPercent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            Transition(
                child:  ProductDetailScreen()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 238.h,
        width: 141.w,
        decoration: BoxDecoration(
            color: colorWhite,
            border: Border.all(color: colorLight, width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroMode(
              enabled: true,
              child: Hero(
                tag: 'image_mode',
                child: Container(
                  height: 125.h,
                  width: 141.w,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 109.h,
                    width: 109.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.contain)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
                width: 109.w,
                alignment: Alignment.centerLeft,
                child: textFieldBold(label, 12.sp, colorTextBlue)),
            SizedBox(
              height: 8.h,
            ),
            Container(
                width: 109.w,
                alignment: Alignment.centerLeft,
                child: textFieldBold(price, 12.sp, colorBlue)),
            SizedBox(
              height: 8.h,
            ),
            Container(
                width: 109.w,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    textFieldOverLine(discountPrice, 10.sp, colorGrey),
                    textFieldBold(' '+discountPercent, 10.sp, colorRed),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
