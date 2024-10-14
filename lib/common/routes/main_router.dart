import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:his_words/common/routes/route_helper.dart';
import 'package:his_words/features/base/base_screen.dart';

class MainRouter implements HisWordsRouter {
  @override
  String get name => "main";

  final GlobalKey<NavigatorState> key = GlobalKey();

  // Indicate route endpoints here
  static const String base = '/';
  static const String home = 'home';

  final LinkedHashMap<String, RouteBuilder> routes = LinkedHashMap.from(
    <String, RouteBuilder>{
      base: ({settings}) => _buildRoute(
            const BaseScreen(),
            settings: settings,
          ),
      home: ({settings}) => _buildRoute(
            const SizedBox(),
            settings: settings,
          ),
    },
  );

  /// The route being passed in [Navigator]'s onGenerateRoute
  Route getRoute(RouteSettings settings) {
    final route = routes[settings.name];
    assert(route != null, "Route is not declared");
    return route!(settings: settings);
  }

  static Route<T> _buildRoute<T>(
    Widget child, {
    required RouteSettings? settings,
    bool fullScreenDialog = false,
  }) {
    return CupertinoPageRoute<T>(
      settings: settings,
      fullscreenDialog: fullScreenDialog,
      builder: (context) {
        return child;
      },
    );
  }
}
