import 'package:flutter/material.dart';
import 'package:website/datamodels/project_item_model.dart';
import 'package:website/locator.dart';
import 'package:website/services/api.dart';

class ProjectDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  ProjectItemModel _project;

  ProjectItemModel get project => _project;

  Future getProjectData(int id) async {
    var response = await _api.getProject(id);

    if (response is String) {
      _project = ProjectItemModel(title: response);
    } else {
      _project = response;
    }

    notifyListeners();
  }
}
