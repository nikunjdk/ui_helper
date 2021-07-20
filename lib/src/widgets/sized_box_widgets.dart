import 'package:flutter/material.dart';

// Horizontal Spacing
/// Horizontal space with width: 5.0
final Widget horizontalSpaceTiny = SizedBox(width: 5.0);

/// Horizontal space with width: 10.0
final Widget horizontalSpaceSmall = SizedBox(width: 10.0);

/// Horizontal space with width: 18.0
final Widget horizontalSpaceRegular = SizedBox(width: 18.0);

/// Horizontal space with width: 25.0
final Widget horizontalSpaceMedium = SizedBox(width: 25.0);

/// Horizontal space with width: 50.0
final Widget horizontalSpaceLarge = SizedBox(width: 50.0);

/// Horizontal space with custom [width]
Widget horizontalSpaceCustom({required double width}) => SizedBox(width: width);

// Vertical Spacing
/// Vertical space with height: 5.0
final Widget verticalSpaceTiny = SizedBox(height: 5.0);

/// Vertical space with height: 10.0
final Widget verticalSpaceSmall = SizedBox(height: 10.0);

/// Vertical space with height: 18.0
final Widget verticalSpaceRegular = SizedBox(height: 18.0);

/// Vertical space with height: 25.0
final Widget verticalSpaceMedium = SizedBox(height: 25);

/// Vertical space with height: 50.0
final Widget verticalSpaceLarge = SizedBox(height: 50.0);

/// Vertical space with height: 120.0
final Widget verticalSpaceMassive = SizedBox(height: 120.0);

/// Returs a vertical space with custom [height]
Widget verticalSpaceCustom({required double height}) =>
    SizedBox(height: height);
