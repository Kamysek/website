import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:website/datamodels/navbar_item_model.dart';

class NavBarItemMobile extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 40),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
