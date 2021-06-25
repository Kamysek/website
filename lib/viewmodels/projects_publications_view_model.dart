import 'package:flutter/material.dart';
import 'package:website/datamodels/project_item_model.dart';
import 'package:website/datamodels/publication_item_model.dart';
import 'package:website/locator.dart';
import 'package:website/services/api.dart';

class ProjectsAndPublicationsViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  // Projects 
  List<ProjectItemModel> _projects;
  List<ProjectItemModel> get projects => _projects;

  Future getProjects() async {
    var projectResults = await _api.getProjects();

    if (projectResults is String) {
      // show error
    } else {
      _projects = projectResults;
    }

    notifyListeners();
  }

  // Publications
  List<PublicationItemModel> _publications;
  List<PublicationItemModel> get publications => _publications;

  Future getPublications() async {
    var publicationResults = await _api.getPublications();

    if (publicationResults is String) {
      // show error
    } else {
      _publications = publicationResults;
    }

    notifyListeners();
  }

}
