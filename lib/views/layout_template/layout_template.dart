import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/widgets/centered_view/centered_view.dart';
import 'package:website/widgets/navigation_bar/navigation_bar.dart';
import 'package:website/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? null
              : NavigationDrawer(sizingInformation),
          backgroundColor: Colors.white,
          body: CenteredView(
            sizingInformation,
            child: Column(
              children: <Widget>[
                NavigationBar(sizingInformation),
                Expanded(
                  child: child,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
