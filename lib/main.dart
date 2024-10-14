import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:his_words/dependencies/dependency_manager.dart';
import 'package:his_words/his_words_app.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Initialize depedency injection
      final DependencyManager dependencyManager;

      dependencyManager = DependencyManager();

      await dependencyManager.init().onError((error, stackTrace) {
        debugPrint("DEPENDENCY MANAGEMENT ERROR: $error $stackTrace");
      });

      runApp(HisWordsApp(dependencyManager: dependencyManager));
    },
    (error, stack) async {
      log(error.toString());
    },
  );
}
