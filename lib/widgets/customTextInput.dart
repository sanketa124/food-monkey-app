import 'package:flutter/material.dart';
import '../const/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required String hintText,

    EdgeInsets padding = const EdgeInsets.only(left: 40),
    bool? obscure,
    Key? key,
  })  : _hintText = hintText,
        _padding = padding,
        _obscureOrNot = (obscure==null?false:obscure),
        super(key: key);

  final String _hintText;
  final EdgeInsets _padding;
  final bool _obscureOrNot;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        obscureText: _obscureOrNot,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: TextStyle(
            color: AppColor.placeholder,
          ),
          contentPadding: _padding,
        ),
      ),
    );
  }
}
