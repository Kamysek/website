import 'package:flutter/material.dart';
import 'package:website/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:website/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final SizingInformation sizingInformation;
  const NavigationBar(this.sizingInformation, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? ScreenTypeLayout(mobile: NavigationBarTabletDesktop(sizingInformation), tablet: NavigationBarTabletDesktop(sizingInformation))
              : ScreenTypeLayout(mobile: NavigationBarMobile());
  }
}
