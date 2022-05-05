import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../assets/index.dart';
import '../../styles/colors.dart';

class InputLoginComponent extends StatefulWidget {
  const InputLoginComponent({
    Key? key,
    this.helperText,
    required this.isPassWord,
    this.id,
    this.styleText,
    this.hintText,
    required this.Iconprefix,
  }) : super(key: key);

  State<InputLoginComponent> createState() => _InputLoginComponent();
  final String? helperText;
  final bool isPassWord;
  final TextEditingController? id;
  final TextStyle? styleText;
  final String? hintText;
  final String Iconprefix;
}

class _InputLoginComponent extends State<InputLoginComponent> {
  bool __passwordVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      __passwordVisible = widget.isPassWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 343.w,
      child: Container(
        height: widget.helperText != null ? 55.h : 48.h,
        width: 343.w,
        child: TextFormField(
            controller: widget.id,
            obscureText: __passwordVisible,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: colorLight,
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(),
                hintText: widget.hintText,
                errorText: widget.helperText,
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorRed, width: 0.5)),
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.w,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'IBMPlex',
                ),
                hintStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.w,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'IBMPlex',
                ),
                prefixIconConstraints:
                    BoxConstraints(maxHeight: 48.h, maxWidth: 50.w),
                prefixIcon: Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: ImageIcon(
                  AssetImage(widget.Iconprefix),
                  size: 15.h,
                )))
            // suffixIcon: Offstage(
            //   offstage: !widget.isPassWord,
            //   child: IconButton(
            //     icon: Icon(__passwordVisible
            //         ? Icons.remove_red_eye
            //         : Icons.visibility_off_rounded),
            //     onPressed: () {
            //       setState(() {
            //         __passwordVisible = !__passwordVisible;
            //       });
            //     },
            //     iconSize: 20,
            //   ),
            // )
            ),
      ),
    );
  }
}
