import 'package:flutter/material.dart';
import 'package:ui_helper/src/shared/colors.dart';

/// Returns an Text Field Widget
class InputFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool isPassword;
  final InputDecoration? inputDecoration;
  final TextStyle? textStyle;
  final Color? fillColor;
  final Color? borderColor;
  final Color? errorBorderColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? trailingTapped;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  InputFieldWidget({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.isPassword = false,
    this.inputDecoration,
    this.textStyle,
    this.fillColor,
    this.borderColor,
    this.errorBorderColor,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.border,
    this.errorBorder,
    this.focusedBorder,
    this.enabledBorder,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: textStyle ?? TextStyle(height: 1),
      obscureText: isPassword,
      decoration: inputDecoration ??
          InputDecoration(
            hintText: placeholder,
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            filled: fillColor != null,
            fillColor: fillColor,
            prefixIcon: leading,
            suffixIcon: trailing != null
                ? GestureDetector(
                    onTap: trailingTapped,
                    child: trailing,
                  )
                : null,
            border: border ??
                circularBorder.copyWith(
                  borderSide:
                      BorderSide(color: borderColor ?? kcLightGreyColor),
                ),
            errorBorder: errorBorder ??
                circularBorder.copyWith(
                  borderSide: BorderSide(
                      color: errorBorderColor ?? Theme.of(context).errorColor),
                ),
            focusedBorder: focusedBorder ??
                circularBorder.copyWith(
                  borderSide: BorderSide(
                      color:
                          focusedBorderColor ?? Theme.of(context).focusColor),
                ),
            enabledBorder: enabledBorder ??
                circularBorder.copyWith(
                  borderSide:
                      BorderSide(color: enabledBorderColor ?? kcLightGreyColor),
                ),
          ),
    );
  }
}
