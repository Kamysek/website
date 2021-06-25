import 'package:flutter/material.dart';
import 'package:website/services/navigation_service.dart';
import 'package:website/views/layout_template/layout_template.dart';

import 'locator.dart';
import 'routing/route_names.dart';
import 'routing/router.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Josef Kamysek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
