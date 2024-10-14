import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:his_words/common/routes/main_router.dart';
import 'package:his_words/common/routes/root_router.dart';
import 'package:his_words/common/utils/app_logger.dart';
import 'package:logger/web.dart';

/// Global dependency locator used across the codebase
GetIt sl = GetIt.I;

extension GetItExtension on GetIt {
  Future<void> ensureReady<T extends Object>() async {
    try {
      await isReady<T>();
    } on Exception catch (e) {
      debugPrint("ensureReady caught exception $e");
    }
  }
}

class DependencyManager {
  bool initialized = false;

  DependencyManager() {
    // Routes
    provideMainRouter();
    provideRootRouter();

    // Helpers
    provideLogger();

    sl<Logger>().i({"Initialized"});
  }

  Future<void> init() async {
    await sl.allReady();

    initialized = true;
  }

  void provideMainRouter() {
    sl.registerSingleton<MainRouter>(MainRouter());
  }

  void provideRootRouter() {
    sl.registerSingleton<RootRouter>(RootRouter());
  }

  void provideLogger() {
    sl.registerLazySingleton<Logger>(
      () => Logger(
        printer: AppLogger(),
      ),
    );
  }
}
