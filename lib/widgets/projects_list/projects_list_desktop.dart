import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:website/datamodels/project_item_model.dart';
import 'package:website/viewmodels/project/project_list_view_model.dart';
import 'dart:html' as html;
import 'project_item.dart';

class ProjectsListDesktop extends ViewModelWidget<List<ProjectItemModel>> {
  @override
  Widget build(BuildContext context, List<ProjectItemModel> projects) {
    return ViewModelBuilder<ProjectListViewModel>.reactive(
      viewModelBuilder: () => ProjectListViewModel(),
      builder: (context, model, child) => Wrap(
        spacing: 30,
        runSpacing: 30,
        children: <Widget>[
          ...projects
              .asMap()
              .map((index, project) => MapEntry(
                    index,
                    GestureDetector(
                        child: ProjectItem(model: project),
                        onTap: () => html.window.open(project.url,
                            'new tab') //model.navigateToProject(index),
                        ),
                  ))
              .values
              .toList()
        ],
      ),
    );
  }
}
