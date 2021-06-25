import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/datamodels/publication_item_model.dart';
import 'package:website/widgets/publications_list/publications_list_desktop.dart';
import 'package:website/widgets/publications_list/publications_list_mobile.dart';

class PublicationsList extends StatelessWidget {
  final List<PublicationItemModel> publications;
  const PublicationsList({Key key, this.publications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: publications,
      child: ScreenTypeLayout(
        desktop: PublicationsListDesktop(),
        mobile: PublicationsListMobile(),
      ),
    );
  }
}
