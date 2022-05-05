import 'package:app_demo/src/base/TextStyle/TextStyle.dart';
import 'package:app_demo/src/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemCatoryHome extends StatelessWidget{
  final String label;
  final Color color;
  final String image;
  const ItemCatoryHome({Key? key, required this.label, required this.color, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108.h,
      width: 70.w,
      margin: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 70.w,
            width: 70.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: colorLight,width: 1),
              borderRadius: BorderRadius.circular(66)
            ),
            child: ImageIcon(AssetImage(image),size: 18.w,color: color),
          ),
          textFieldRegular(label, 10.sp,color)
        ],
      ),
    );
  }
}