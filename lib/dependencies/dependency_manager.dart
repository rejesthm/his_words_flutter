import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
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
    sl<Logger>().i({"Initialized"});
  }
}
