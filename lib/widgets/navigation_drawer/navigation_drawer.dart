import 'package:flutter/material.dart';
import 'package:responsive_builder/src/sizing_information.dart';
import 'package:website/routing/route_names.dart';
import 'package:website/widgets/navbar_item/navbar_item.dart';
import 'package:website/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  final SizingInformation sizingInformation;
  const NavigationDrawer(this.sizingInformation, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 265,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavBarItem(
            'Home',
            HomeRoute,
            Icons.home,
            sizingInformation,
          ),
          NavBarItem(
            'Projects / Publications',
            ProjectsPublicationsRoute,
            Icons.description,
            sizingInformation,
          ),
        ],
      ),
    );
  }
}
