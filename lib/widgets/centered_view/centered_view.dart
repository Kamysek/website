import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final SizingInformation sizingInformation;
  const CenteredView(this.sizingInformation, {Key key, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sizingInformation.deviceScreenType == DeviceScreenType.desktop
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1300),
              child: child,
            ),
          )
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: child,
            ),
          );
  }
}
