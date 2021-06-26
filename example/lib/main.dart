import 'package:flutter/material.dart';

import 'package:ui_helper/ui_helper.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "UI Helper",
          style: headlineStyle,
        ),
      ),
      body: Column(
        children: [
          FlutterLogo(
            size: screenHeightPercentage(context, percentage: 0.5),
          ),
          verticalSpaceRegular,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Heading1",
                style: heading1Style.copyWith(
                  color: Colors.deepPurple,
                ),
              ),
              horizontalSpaceSmall,
              Text(
                "Body",
                style: bodyStyle.copyWith(
                  color: Colors.deepPurpleAccent,
                  fontFamily: "Poppins",
                ),
              ),
              horizontalSpaceCustom(width: 20.0),
              Text(
                "Subheading",
                style: subheadingStyle.copyWith(
                  color: Colors.purple,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
