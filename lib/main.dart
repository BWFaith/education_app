import 'package:device_preview/device_preview.dart';
import 'package:education_app/pages/widget_tree.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => MyEduApp()),
  );
}

class MyEduApp extends StatelessWidget {
  const MyEduApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetTree();
  }
}
