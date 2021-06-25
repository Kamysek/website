import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website/routing/route_names.dart';
import 'package:website/views/project_details/project_details.dart';
import 'package:website/views/publication_details/publication_details.dart';
import 'package:website/views/project_publication/project_publication_view.dart';
import 'package:website/views/home/home_view.dart';
import 'package:website/extensions/string_extensions.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name.getRoutingData; // Get the routing Data
  switch (routingData.route) {
    // Switch on the path from the data
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);

    case ProjectsPublicationsRoute:
      return _getPageRoute(ProjectAndPublicationView(), settings);

    case ProjectDetailsRoute:
      var id = int.tryParse(routingData['id']); // Get the id from the data.
      return _getPageRoute(ProjectDetails(id: id), settings);

    case PublicationDetailsRoute:
      var id = int.tryParse(routingData['id']); // Get the id from the data.
      return _getPageRoute(PublicationDetails(id: id), settings);

    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
