import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:website/datamodels/project_item_model.dart';
import 'package:website/datamodels/publication_item_model.dart';

class Api {

  Future<String> _getJson(String filename) {
    return rootBundle.loadString(filename);
  }

  // Projects

  Future<dynamic> getProjects() async {
    var json = jsonDecode(await _getJson('projects.json'));

    var projects = (json as List)
        .map((projects) => ProjectItemModel.fromJson(projects))
        .toList();

    return projects;
  }

  Future<dynamic> getProject(int id) async {
    var json = jsonDecode(await _getJson('projects.json'));
    
    var project = ProjectItemModel.fromJson(json[id]);
    return project;
  }

  // Publications

  Future<dynamic> getPublications() async {
    var json = jsonDecode(await _getJson('publications.json'));

    var publications = (json as List)
        .map((publications) => PublicationItemModel.fromJson(publications))
        .toList();

    return publications;
  }

  Future<dynamic> getPublication(int id) async {
    var json = jsonDecode(await _getJson('publications.json'));
    
    var publication = PublicationItemModel.fromJson(json[id]);
    return publication;
  }

}
