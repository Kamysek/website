import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Overview',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w800, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
