import 'package:flutter/material.dart';

/// Detecting layout

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static late bool isMobile;
  static late bool isTablet;
  static late bool isDesktop;

  Responsive({
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  _assignBool({
    bool isMobile = false,
    bool isTablet = false,
    bool isDesktop = false,
  }) {
    Responsive.isMobile = isMobile;
    Responsive.isTablet = isTablet;
    Responsive.isDesktop = isDesktop;
  }

// This size work fine on my design, maybe you need some customization depends on your design

  //* while my every pages depends/wraped with [Responsive], we can avoid calling another query to get viewName
  // This isMobile, isTablet, isDesktop helep us later
  // static bool isMobile(BuildContext context) =>
  //     MediaQuery.of(context).size.width < kMobileMaxWidth;

  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width < kTabletMaxWidth &&
  //     MediaQuery.of(context).size.width >= kMobileMaxWidth;

  // static bool isDesktop(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= kTabletMaxWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          _assignBool(isDesktop: true);
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          _assignBool(isTablet: true);
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          _assignBool(isMobile: true);
          return mobile;
        }
      },
    );
  }
}
