import 'package:flutter/material.dart';
import 'package:ui_helper/src/shared/styles.dart';

/// Creates a text widget
class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;

  TextWidget.headingOne(this.text, {TextStyle? textStyle})
      : style = heading1Style.merge(textStyle?.copyWith(inherit: true));
  TextWidget.headingTwo(this.text, {TextStyle? textStyle})
      : style = heading2Style.merge(textStyle?.copyWith(inherit: true));
  TextWidget.headingThree(this.text, {TextStyle? textStyle})
      : style = heading3Style.merge(textStyle?.copyWith(inherit: true));
  TextWidget.headline(this.text, {TextStyle? textStyle})
      : style = headlineStyle.merge(textStyle?.copyWith(inherit: true));
  TextWidget.subheading(this.text, {TextStyle? textStyle})
      : style = subheadingStyle.merge(textStyle?.copyWith(inherit: true));
  TextWidget.caption(this.text, {TextStyle? textStyle})
      : style = captionStyle.merge(textStyle?.copyWith(inherit: true));

  TextWidget.body(this.text, {TextStyle? textStyle})
      : style = bodyStyle.merge(textStyle?.copyWith(inherit: true));

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
