# UI Helper

<p align="center">
	<a href="https://opensource.org/licenses/MIT" rel="noopener" target="_blank"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License Badge"></a>
	<a href="https://github.com/nikunjdk/ui_helper" rel="noopener" target="_blank"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Flutter Platform Badge"></a>
  <a href="https://makeapullrequest.com" rel="noopener" target="_blank"><img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square" alt="PRs Welcome Badge"></a>
</p>

UI Helpers to speed boost your development time! These will help you make your app responsive and also provides easy way to create Text, Button and Text Field Widgets.

## Installation

pubspec.yaml:

```yaml
dependencies:
  ui_helper: ^1.1.0
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:ui_helper/ui_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Helper',
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          children: [
            TextWidget.headingOne('Design System'),
            verticalSpaceSmall,
            Divider(),
            verticalSpaceSmall,
            ...buttonWidgets,
            ...textWidgets,
            ...inputFields,
          ],
        ),
      ),
    );
  }
}

List<Widget> get textWidgets => [
      TextWidget.headline('Text Styles'),
      verticalSpaceMedium,
      TextWidget.headingOne('Heading One'),
      verticalSpaceMedium,
      TextWidget.headingTwo('Heading Two'),
      verticalSpaceMedium,
      TextWidget.headingThree('Heading Three'),
      verticalSpaceMedium,
      TextWidget.headline('Headline'),
      verticalSpaceMedium,
      TextWidget.subheading('This will be a sub heading to the headling'),
      verticalSpaceMedium,
      TextWidget.body('Body Text that will be used for the general body'),
      verticalSpaceMedium,
      TextWidget.caption(
          'This will be the caption usually for smaller details'),
      verticalSpaceMedium,
    ];

List<Widget> get buttonWidgets => [
      TextWidget.headline('Buttons'),
      verticalSpaceMedium,
      TextWidget.body('Normal'),
      verticalSpaceSmall,
      ButtonWidget(
        title: 'SIGN IN',
      ),
      verticalSpaceSmall,
      TextWidget.body('Disabled'),
      verticalSpaceSmall,
      ButtonWidget(
        title: 'SIGN IN',
        disabled: true,
      ),
      verticalSpaceSmall,
      TextWidget.body('Busy'),
      verticalSpaceSmall,
      ButtonWidget(
        title: 'SIGN IN',
        busy: true,
      ),
      verticalSpaceSmall,
      TextWidget.body('Outline'),
      verticalSpaceSmall,
      ButtonWidget.outline(
        title: 'Select location',
        leading: Icon(
          Icons.send,
        ),
      ),
      verticalSpaceMedium,
    ];

List<Widget> get inputFields => [
      TextWidget.headline('Input Field'),
      verticalSpaceSmall,
      TextWidget.body('Normal'),
      verticalSpaceSmall,
      InputFieldWidget(
        controller: TextEditingController(),
        placeholder: 'Enter Password',
      ),
      verticalSpaceSmall,
      TextWidget.body('Leading Icon'),
      verticalSpaceSmall,
      InputFieldWidget(
        controller: TextEditingController(),
        leading: Icon(Icons.reset_tv),
        placeholder: 'Enter TV Code',
      ),
      verticalSpaceSmall,
      TextWidget.body('Trailing Icon'),
      verticalSpaceSmall,
      InputFieldWidget(
        controller: TextEditingController(),
        trailing: Icon(Icons.clear_outlined),
        placeholder: 'Search for things',
      ),
    ];

```

## License

MIT
