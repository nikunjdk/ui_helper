import 'package:flutter/material.dart';
import 'package:ui_helper/src/shared/colors.dart';
import 'package:ui_helper/src/shared/styles.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function()? onTap;
  final bool outline;
  final Widget? leading;
  final double width;
  final double height;
  final BoxDecoration? decoration;
  final Color? activeButtonColor;
  final Color disabledButtonColor;
  final TextStyle? textStyle;
  final Color? textColor;
  final Color? indicatorColor;
  final Widget? progressIndicator;

  const ButtonWidget({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading,
    this.width = double.infinity,
    this.height = 48,
    this.decoration,
    this.activeButtonColor,
    this.disabledButtonColor = kcMediumGreyColor,
    this.textStyle,
    this.textColor,
    this.indicatorColor,
    this.progressIndicator,
  })  : outline = false,
        super(key: key);

  const ButtonWidget.outline({
    required this.title,
    this.onTap,
    this.leading,
    this.width = double.infinity,
    this.height = 48,
    this.decoration,
    this.activeButtonColor,
    this.disabledButtonColor = kcMediumGreyColor,
    this.textStyle,
    this.textColor,
    this.indicatorColor,
    this.progressIndicator,
  })  : disabled = false,
        busy = false,
        outline = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: decoration != null
            ? decoration
            : !outline
                ? BoxDecoration(
                    color: !disabled
                        ? activeButtonColor ?? Theme.of(context).primaryColor
                        : disabledButtonColor,
                    borderRadius: BorderRadius.circular(8),
                  )
                : BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:
                          activeButtonColor ?? Theme.of(context).primaryColor,
                      width: 1,
                    )),
        child: !busy
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (leading != null) leading!,
                  if (leading != null) SizedBox(width: 5),
                  Text(
                    title,
                    style: textStyle ??
                        bodyStyle.copyWith(
                          fontWeight:
                              !outline ? FontWeight.bold : FontWeight.w400,
                          color: !outline
                              ? Colors.white
                              : textColor ?? Theme.of(context).accentColor,
                        ),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: progressIndicator ??
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                          indicatorColor ?? Colors.white),
                    ),
              ),
      ),
    );
  }
}
