import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:his_words/dependencies/dependency_manager.dart';
import 'package:logger/logger.dart';

class HisWordsBloc extends Cubit<HisWordsAppState> {
  HisWordsBloc() : super(HisWordsAppState());

  Future<void> initializeApp(DependencyManager dependencyManager) async {
    emit(state.copyWith(
      initialized: false,
      error: null,
      showSplashScreen: true,
    ));

    // Fake splash screen
    await Future.delayed(const Duration(seconds: 2));

    // to make sure dependencies were initialized well
    // before we proceed to the next screen
    // this is to avoid any errors that might occur
    if (dependencyManager.initialized == true) {
      await onColdStart();
      emit(state.copyWith(initialized: true, showSplashScreen: false));
      return;
    }

    try {
      await dependencyManager.init();
      await onColdStart();
      emit(state.copyWith(initialized: true, showSplashScreen: false));
    } catch (e, stackTrace) {
      Logger()
          .e("DEPENDENCY ERROR WENT HERE", error: e, stackTrace: stackTrace);
      emit(state.copyWith(error: e, showSplashScreen: false));
    }
  }

  /// Verify if the app is a fresh install
  /// add codes when needed
  Future<void> verifyFreshInstall() async {}

  Future<void> onColdStart() async {
    // Verify fresh install
    await verifyFreshInstall();
  }
}

class HisWordsAppState {
  final bool initialized;
  final dynamic error;
  final bool? showSplashScreen;

  HisWordsAppState({
    this.initialized = false,
    this.showSplashScreen = false,
    this.error,
  });

  HisWordsAppState copyWith({
    bool? initialized,
    dynamic error,
    bool? showSplashScreen,
  }) {
    return HisWordsAppState(
      initialized: initialized ?? this.initialized,
      error: error ?? this.error,
      showSplashScreen: showSplashScreen ?? this.showSplashScreen,
    );
  }
}
