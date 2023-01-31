import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UseCase1 extends StatelessWidget {
  const UseCase1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => Column(
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
          tablet: (BuildContext context) => Column(
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
          desktop: (BuildContext context) => Column(
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
          watch: (BuildContext context) => Column(
            children: [
              Text("This is a specific screen designed for mobile view"),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
