import 'package:flutter/material.dart';
import 'package:responsive_login_signup/responsive.dart';
import 'package:responsive_login_signup/screens/desktop_screen.dart';
import 'package:responsive_login_signup/screens/mobile_screen.dart';
import 'package:responsive_login_signup/screens/tablet_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
            mobile: MobileScreen(),
            tablet: TabletScreen(),
            desktop: DesktopScreen()));
  }
}
