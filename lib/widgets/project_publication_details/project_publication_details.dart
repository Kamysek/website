import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/datamodels/project_publication_details_model.dart';
import 'package:website/widgets/project_publication_details/project_publication_details_desktop.dart';
import 'package:website/widgets/project_publication_details/project_publication_details_mobile.dart';

class ProjectAndPublicationDetails extends StatelessWidget {
  final ProjectAndPublicationDetailsModel details;
  const ProjectAndPublicationDetails({Key key, this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout(
        desktop: ProjectAndPublicationDetailsDesktop(),
        mobile: ProjectAndPublicationDetailsMobile(),
      ),
    );
  }
}
