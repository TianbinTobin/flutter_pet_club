import 'package:flutter/material.dart';
import 'package:pet_club/common/constants/colors.dart';

class LoginInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String placeholder;
  final Color color;
  final Color fillColor;
  final double fontSize;
  final bool password;
  final Widget? icon;
  final String? Function(String?)? validator;

  const LoginInputField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.placeholder = '',
    this.color = ColorConstants.black,
    this.fillColor = ColorConstants.inputBackgroundColor,
    this.fontSize = 20.0,
    this.password = false,
    this.icon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        isCollapsed: true,
        constraints: BoxConstraints.tightFor(height: 45.0),
        contentPadding:
            EdgeInsets.only(top: 10.0, bottom: 11.0, left: 10.0, right: 10.0),
        prefixIcon: Padding(
          padding:
              EdgeInsets.only(left: 24.0, right: 12.0, top: 10.0, bottom: 11.0),
          child: icon,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.none),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.none),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.none),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: ColorConstants.inputPlaceholderColor,
          fontWeight: FontWeight.normal,
        ),
      ),
      style: TextStyle(
        color: color,
        height: 1.2,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: password,
      validator: validator,
    );
  }
}
