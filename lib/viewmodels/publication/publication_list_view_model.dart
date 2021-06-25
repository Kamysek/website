import 'package:flutter/cupertino.dart';
import 'package:website/locator.dart';
import 'package:website/routing/route_names.dart';
import 'package:website/services/navigation_service.dart';

class PublicationListViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToPublication(int index) {
    _navigationService
        .navigateTo(PublicationDetailsRoute, queryParams: {'id': index.toString()});
  }
}