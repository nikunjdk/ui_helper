import 'package:flutter/material.dart';

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
