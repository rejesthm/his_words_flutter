import 'package:flutter/material.dart';
import 'package:his_words/common/routes/main_router.dart';
import 'package:his_words/common/routes/root_router.dart';
import 'package:his_words/dependencies/dependency_manager.dart';

typedef RouteBuilder = Route<dynamic> Function({RouteSettings? settings});

abstract class HisWordsRouter {
  String get name;
}

/// The class which oversees every route states and it serves as helper to any
/// UI components that need it.
class RouteHelper {
  @protected
  RootRouter get rootRouter => sl<RootRouter>();

  @protected
  MainRouter get mainRouter => sl<MainRouter>();

  /// ROOT routes
  /// ************************************************************

  /// MAIN routes
  /// ************************************************************
  void navigateToBaseScreen() {
    mainRouter.key.currentState?.pushReplacementNamed(
      MainRouter.base,
    );
  }

  void showHomeScreen() {
    mainRouter.key.currentState?.pushNamed(
      MainRouter.home,
    );
  }

  void popToPreviousPage() {
    mainRouter.key.currentState?.pop();
  }

  // defaults
  void popMainToRoot() {
    mainRouter.key.currentState?.popUntil((route) => route.isFirst);
  }
}
