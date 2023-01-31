import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UseCase2 extends StatelessWidget {
  const UseCase2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => MobileView(),
          tablet: (BuildContext context) => TabletView(),
          desktop: (BuildContext context) => Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    children: [
                      Text(
                        "Some \nHeading",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: Text(
                          "Link 1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Text(
                        "Link 2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        children: [
                          Text(
                            "Screen Designed for Mobile view - Responsive Design",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 60),
                          // SizedBox(height: 100),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            // textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 32),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Center(child: ButtonInUse()))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonInUse extends StatelessWidget {
  const ButtonInUse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var device_type = getDeviceType(MediaQuery.of(context).size);
    return Container(
      height: getValueForScreenType<double>(
        context: context,
        mobile: 60,
        tablet: 100,
        desktop: 100,
      ),
      width: getValueForScreenType<double>(
        context: context,
        mobile: 200,
        tablet: 300,
        desktop: 300,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getValueForScreenType<double>(
            context: context,
            mobile: 16,
            tablet: 24,
            desktop: 30,
          ),
        ),
        color: Colors.green.shade500,
      ),
      child: Center(
          child: Text(
        "Button",
        style: TextStyle(
            color: Colors.white,
            fontSize: getValueForScreenType<double>(
              context: context,
              mobile: 16,
              tablet: 24,
              desktop: 30,
            ),
            fontWeight: FontWeight.w600),
      )),
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Row(
              children: [
                Text(
                  "Some \nHeading",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    "Link 1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Text(
                  "Link 2",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Text(
              "Screen Designed for Mobile view - Responsive Design",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 62,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              style: TextStyle(fontSize: 28),
            ),
          ),
          SizedBox(height: 80),
          Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.green.shade500,
            ),
            child: Center(
                child: Text(
              "Button",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
          )
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Text(
                  "Some \nHeading",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(height: 80),
          Text(
            "Screen Designed for Mobile view - Responsive Design",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 42),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
          SizedBox(height: 42),
          Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.green.shade500,
            ),
            child: Center(
                child: Text(
              "Button",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
          )
        ],
      ),
    );
  }
}
