import 'package:flutter/material.dart';
import 'package:sign_up_ui/constant.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  const CustomTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.inputAction,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        prefixIcon ?? Container(),
        const SizedBox(width: 14),
        Expanded(
          child: TextFormField(
            cursorHeight: 18,
            cursorColor: kDarkBlue,
            obscureText: obscureText,
            style: TextStyle(color: kDarkBlue),
            keyboardType: keyboardType,
            textInputAction: inputAction,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kDarkBlue),
              ),
              hintStyle: TextStyle(
                color: kGreyBlue,
                fontWeight: FontWeight.w500,
              ),
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
