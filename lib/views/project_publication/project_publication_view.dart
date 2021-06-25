import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:website/datamodels/project_publication_details_model.dart';
import 'package:website/viewmodels/projects_publications_view_model.dart';
import 'package:website/widgets/project_publication_details/project_publication_details.dart';
import 'package:website/widgets/projects_list/projects_list.dart';
import 'package:website/widgets/publications_list/publications_list.dart';

class ProjectAndPublicationView extends StatelessWidget {
  const ProjectAndPublicationView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectsAndPublicationsViewModel>.reactive(
      viewModelBuilder: () => ProjectsAndPublicationsViewModel(),
      onModelReady: (model) => {
        model.getProjects(), model.getPublications()},
      builder: (context, model, child) => SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          // Projects
          SizedBox(
            height: 60,
          ),
          ProjectAndPublicationDetails(
            details: ProjectAndPublicationDetailsModel(
              title: 'Projects',
              description:
                  'This section contains current and past projects I have developed or contributed to.',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          model.projects == null
              ? Center(child: CircularProgressIndicator())
              : ProjectsList(projects: model.projects),
        // Publications
        SizedBox(
            height: 60,
          ),
          ProjectAndPublicationDetails(
            details: ProjectAndPublicationDetailsModel(
              title: 'Publications',
              description:
                  'This section contains current and past publications I published or contributed to.',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          model.publications == null
              ? Center(child: CircularProgressIndicator())
              : PublicationsList(publications: model.publications),
        ],
      )),
    );
  }
}
