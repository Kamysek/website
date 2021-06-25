import 'package:flutter/material.dart';
import 'package:website/locator.dart';
import 'package:website/routing/route_names.dart';
import 'package:website/services/navigation_service.dart';
import 'package:website/extensions/hover_extensions.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openEndDrawer();
        locator<NavigationService>().navigateTo(HomeRoute);
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('assets/logo.png'),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}
