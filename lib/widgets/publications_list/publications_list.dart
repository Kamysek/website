import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:website/datamodels/publication_item_model.dart';
import 'package:website/viewmodels/publication/publication_list_view_model.dart';
import 'dart:html' as html;
import 'publication_item.dart';

class PublicationsList extends StatelessWidget {
  final List<PublicationItemModel> publications;
  PublicationsList({this.publications});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PublicationListViewModel>.reactive(
      viewModelBuilder: () => PublicationListViewModel(),
      builder: (context, model, child) => Wrap(
        spacing: 30,
        runSpacing: 30,
        children: <Widget>[
          ...publications
              .asMap()
              .map((index, publication) => MapEntry(
                    index,
                    GestureDetector(
                      child: PublicationItem(model: publication),
                      onTap: () => html.window.open(publication.url, 'new tab') //navigateToPublication(index),
                    ),
                  ))
              .values
              .toList()
        ],
      ),
    );
  }
}
