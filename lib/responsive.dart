import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 600;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 600 &&
        MediaQuery.sizeOf(context).width <= 1200;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 1200;
  }

  @override
  Widget build(BuildContext context) {
    if (isSmallScreen(context)) {
      return mobile;
    } else if (isMediumScreen(context)) {
      return tablet;
    } else {
      return desktop;
    }
  }
}
