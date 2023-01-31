import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RotateThis extends StatelessWidget {
  const RotateThis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            OrientationLayoutBuilder(
              portrait: (context) => Column(
                children: [
                  Container(height: 300, width: 300, color: Colors.green),
                  Container(
                    child: Text(
                      "show this UI",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              landscape: (context) => Column(
                children: [
                  Container(height: 300, width: 300, color: Colors.pink),
                  Container(
                    child: Text(
                      "show another UI for landscape",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
