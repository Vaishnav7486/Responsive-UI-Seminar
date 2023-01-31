import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BasicExample extends StatelessWidget {
  const BasicExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ResponsiveBuilder(builder: (context, sizingInformation) {
            // Check the sizing information here and return your UI
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return Container(height: 400, width: 400, color: Colors.blue);
            }

            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Container(height: 400, width: 400, color: Colors.red);
            }
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return Container(height: 200, width: 200, color: Colors.yellow);
            }

            if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
              return Container(height: 400, width: 400, color: Colors.yellow);
            }

            return Container(color: Colors.purple);
          })
        ],
      )),
    );
  }
}
