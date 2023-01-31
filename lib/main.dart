import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsiveapp/responsive_builder/basic_example.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsiveapp/responsive_builder/breakpoints_usecase.dart';
import 'package:responsiveapp/responsive_builder/rotate_this.dart';
import 'package:responsiveapp/responsive_builder/usecase1.dart';
import 'package:responsiveapp/responsive_builder/usecase_2.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: UseCase2(),
    );
  }
}
