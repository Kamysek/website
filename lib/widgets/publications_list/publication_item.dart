import 'package:flutter/material.dart';
import 'package:website/datamodels/publication_item_model.dart';
import 'package:website/extensions/hover_extensions.dart';

class PublicationItem extends StatelessWidget {
  final PublicationItemModel model;
  const PublicationItem({
    Key key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 25.0,
              ),
              child: Text(
                model.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                ),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
