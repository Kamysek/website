import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/routing/route_names.dart';
import 'package:website/widgets/navbar_item/navbar_item.dart';

import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  final SizingInformation sizingInformation;
  const NavigationBarTabletDesktop(this.sizingInformation, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', HomeRoute, Icons.clear, sizingInformation),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Projects / Publications', ProjectsPublicationsRoute, Icons.clear, sizingInformation),
            ],
          )
        ],
      ),
    );
  }
}
