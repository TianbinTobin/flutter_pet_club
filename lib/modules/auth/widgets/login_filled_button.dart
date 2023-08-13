import 'package:flutter/material.dart';

class LoginFilledButton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final double fontSize;
  final void Function() onPressed;

  const LoginFilledButton({
    super.key,
    required this.onPressed,
    this.text,
    this.icon,
    this.fontSize = 25.0
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return FilledButton.icon(
        onPressed: onPressed,
        icon: icon!,
        style: buildButtonStyle(context),
        label: buildText(context),
      );
    } else {
      return FilledButton(
        onPressed: onPressed,
        style: buildButtonStyle(context),
        child: buildText(context),
      );
    }
  }

  Widget buildText(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(fontSize: fontSize),
    );
  }

  ButtonStyle buildButtonStyle(BuildContext context) {
    return FilledButton.styleFrom(
      minimumSize: Size(318.0, 45.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
