import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BreakPointsUseCase extends StatelessWidget {
  const BreakPointsUseCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ScreenTypeLayout(
              breakpoints:
                  ScreenBreakpoints(tablet: 600, desktop: 900, watch: 300),
              mobile: Column(
                children: [
                  Text(
                    "This is a specific screen designed for mobile view",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber),
                  ),
                  Container()
                ],
              ),
              tablet: Column(
                children: [
                  Text(
                    "This is a specific screen designed for tablet view",
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                        color: Colors.green),
                  ),
                  Container()
                ],
              ),
              desktop: Column(
                children: [
                  Text(
                    "This is a specific screen designed for desktop view",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.red),
                  ),
                  Container()
                ],
              ),
              watch: Container(color: Colors.purple))),
    );
  }
}
