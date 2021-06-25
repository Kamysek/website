import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/datamodels/project_publication_details_model.dart';
import 'package:website/styles/text_styles.dart';

class ProjectAndPublicationDetailsMobile extends ViewModelWidget<ProjectAndPublicationDetailsModel> {
  @override
  Widget build(BuildContext context, ProjectAndPublicationDetailsModel details) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: <Widget>[
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            details.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType),
          ),
        ],
      ),
    );
  }
}
