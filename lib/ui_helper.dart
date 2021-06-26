/// Contains UI Helpers to speed boost you development time! These will help you make your app responsive and also provides text styles.
library ui_helper;

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

// Screen Size Helpers
/// Returns the width of the screen
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

/// Returns the height of the screen
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

/// Returns screen height * [percentage]. [percentage] should be between 0 and 1 where 0 is 0% and 100 is 100% of the screens height
double screenHeightPercentage(BuildContext context,
        {required double percentage}) =>
    screenHeight(context) * percentage;

/// Returns screen width * [percentage]. [percentage] should be between 0 and 1 where 0 is 0% and 100 is 100% of the screens width
double screenWidthPercentage(BuildContext context,
        {required double percentage}) =>
    screenWidth(context) * percentage;

// Text Styles
/// Text Style with fontSize: 34 and fontWeight: FontWeight.w400
final TextStyle heading1Style = TextStyle(
  fontSize: 34,
  fontWeight: FontWeight.w400,
);

/// Text Style with fontSize: 28 and fontWeight: FontWeight.w600
final TextStyle heading2Style = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w600,
);

/// Text Style with fontSize: 24 and fontWeight: FontWeight.w600
final TextStyle heading3Style = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w600,
);

/// Text Style with fontSize: 30 and fontWeight: FontWeight.w700
final TextStyle headlineStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
);

/// Text Style with fontSize: 16 and fontWeight: FontWeight.w400
final TextStyle bodyStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

/// Text Style with fontSize: 20 and fontWeight: FontWeight.w400
final TextStyle subheadingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
);

/// Text Style with fontSize: 12 and fontWeight: FontWeight.w400
final TextStyle captionStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
