import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/datamodels/project_item_model.dart';
import 'package:website/widgets/projects_list/projects_list_desktop.dart';
import 'package:website/widgets/projects_list/projects_list_mobile.dart';

class ProjectsList extends StatelessWidget {
  final List<ProjectItemModel> projects;
  const ProjectsList({Key key, this.projects}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: projects,
      child: ScreenTypeLayout(
        desktop: ProjectsListDesktop(),
        mobile: ProjectsListMobile(),
      ),
    );
  }
}
