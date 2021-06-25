import 'package:flutter/material.dart';
import 'package:website/datamodels/project_item_model.dart';
import 'package:website/extensions/hover_extensions.dart';

class ProjectItem extends StatelessWidget {
  final ProjectItemModel model;
  const ProjectItem({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: SizedBox(
                height: 120,
                child: Image.network(model.imageUrl, fit: BoxFit.contain,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    '${model.description}',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
