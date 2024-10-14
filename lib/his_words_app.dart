import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:his_words/common/routes/root_router.dart';
import 'package:his_words/common/styles/app_themes.dart';
import 'package:his_words/common/utils/context_utils.dart';
import 'package:his_words/dependencies/app_dependency_provider.dart';
import 'package:his_words/dependencies/dependency_manager.dart';
import 'package:his_words/features/landing/landing_screen.dart';
import 'package:his_words/generated/l10n.dart';

class HisWordsApp extends StatelessWidget {
  final DependencyManager dependencyManager;
  const HisWordsApp({
    super.key,
    required this.dependencyManager,
  });

  @override
  Widget build(BuildContext context) {
    final rootRouter = sl.get<RootRouter>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HisWords",
      navigatorKey: rootRouter.key,
      onGenerateRoute: rootRouter.getRoute,
      theme: AppThemes.darkTheme,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      locale: const Locale("en", "GB"),
      supportedLocales: const [
        Locale('en', 'UK'),
      ],
      home: GestureDetector(
        onTap: hideKeyboard,
        child: AppDependencyProvider(
          child: LandingScreen(
            dependencyManager: dependencyManager,
          ),
        ),
      ),
    );
  }
}
