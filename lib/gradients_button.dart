library gradients_button;

import 'package:flutter/material.dart';

class GradientButtton extends StatelessWidget {
  const GradientButtton({
    super.key,
    this.buttonTextStyle,
    required this.buttonText,
    required this.onTap,
    this.colors,
    this.width,
    this.buttonPadding,
  });

  /// Style the Button Text default is the Material TextStyle
  final TextStyle? buttonTextStyle;

  ///The title of the button
  final String buttonText;

  final void Function() onTap;

  ///List all the collors you want to  display on the button[ Optional ]
  final List<Color>? colors;

  /// Give the button a width, defaulth with is MediaQuery.sizeOf(contex).width
  final double? width;

  /// Change the padding between the text and the buttton, default is [EdgeInsets.symmetric(vertical: 15)],
  final EdgeInsetsGeometry? buttonPadding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: colors ?? [Colors.red, Colors.green, Colors.blue]),
            borderRadius: BorderRadius.circular(10)),
        padding: buttonPadding ?? const EdgeInsets.symmetric(vertical: 15),
        width: width ?? MediaQuery.sizeOf(context).width,
        child: Center(
            child: Text(
          buttonText,
          style: buttonTextStyle,
        )),
      ),
    );
  }
}
