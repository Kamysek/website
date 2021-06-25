import 'package:flutter/cupertino.dart';
import 'package:website/locator.dart';
import 'package:website/routing/route_names.dart';
import 'package:website/services/navigation_service.dart';

class ProjectListViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToProject(int index) {
    _navigationService
        .navigateTo(ProjectDetailsRoute, queryParams: {'id': index.toString()});
  }
}