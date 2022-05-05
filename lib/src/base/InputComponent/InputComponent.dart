import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputComponent extends StatefulWidget {
  const InputComponent(
      {Key? key,
      required this.lablel,
      required this.require,
      this.helperText,
      required this.isPassWord,
      this.id,
      this.styleText,
      this.hintText})
      : super(key: key);

  State<InputComponent> createState() => _InputComponent();
  final String lablel;
  final bool require;
  final String? helperText;
  final bool isPassWord;
  final TextEditingController? id;
  final TextStyle? styleText;
  final String? hintText;
}

class _InputComponent extends State<InputComponent> {
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
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        children: [
                      TextSpan(text: widget.lablel, style: widget.styleText)
                    ])),
                Offstage(
                  offstage: !widget.require,
                  child: Text(
                    '*',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: widget.helperText != null ? 70 : 50,
            child: TextFormField(
              controller: widget.id,
              obscureText: __passwordVisible,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                fontFamily: 'Poppins',
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(color: Colors.blueGrey, fontSize: 12),
                  helperText: widget.helperText,
                  helperStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                      fontSize: 10),
                  suffixIcon: Offstage(
                    offstage: !widget.isPassWord,
                    child: IconButton(
                      icon: Icon(__passwordVisible
                          ? Icons.remove_red_eye
                          : Icons.visibility_off_rounded),
                      onPressed: () {
                        setState(() {
                          __passwordVisible = !__passwordVisible;
                        });
                      },
                      iconSize: 20,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
