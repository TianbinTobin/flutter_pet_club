import 'package:flutter/material.dart';
import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/common/values/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color color;
  final Color fillColor;
  final double fontSize;
  final bool password;
  final String? Function(String?)? validator;

  const InputField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.placeholder = '',
    this.color = ColorConstants.black,
    this.fillColor = Colors.transparent,
    this.fontSize = 20.0,
    this.password = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: fillColor,
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 24.0, right: 12.0),
          child: Assets.images.icons.mail.svg(),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
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
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: fontSize - 2,
          color: color,
          height: 0.2,
          fontWeight: FontWeight.normal,
        ),
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: ColorConstants.inputPlaceholderColor,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        isDense: true,
      ),
      controller: controller,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
      keyboardType: keyboardType,
      obscureText: password,
      autocorrect: false,
      validator: validator,
    );
  }
}
