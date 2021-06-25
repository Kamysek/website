import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/datamodels/navbar_item_model.dart';
import 'package:website/locator.dart';
import 'package:website/services/navigation_service.dart';
import 'package:website/widgets/navbar_item/navbar_item_desktop.dart';
import 'package:website/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:website/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  final SizingInformation sizingInformation;
  const NavBarItem(this.title, this.navigationPath, this.icon, this.sizingInformation);

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openEndDrawer();
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? ScreenTypeLayout(mobile: NavBarItemTabletDesktop(), tablet: NavBarItemTabletDesktop()).showCursorOnHover.moveUpOnHover
              : ScreenTypeLayout(mobile: NavBarItemMobile()).showCursorOnHover.moveUpOnHover,
      ),
    );
  }
}
