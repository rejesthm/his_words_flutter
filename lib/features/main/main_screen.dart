import 'package:flutter/material.dart';
import 'package:his_words/common/routes/main_router.dart';
import 'package:his_words/dependencies/dependency_manager.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final router = sl.get<MainRouter>();
    return Navigator(
      key: router.key,
      observers: [
        HeroController(),
      ],
      initialRoute: MainRouter.base,
      onGenerateRoute: router.getRoute,
    );
  }
}
