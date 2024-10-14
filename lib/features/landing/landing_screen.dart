import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:his_words/blocs/app/his_words_bloc.dart';
import 'package:his_words/dependencies/dependency_manager.dart';
import 'package:his_words/features/main/main_screen.dart';
import 'package:his_words/features/splash/splash_screen.dart';

class LandingScreen extends StatefulWidget {
  final DependencyManager dependencyManager;
  const LandingScreen({
    super.key,
    required this.dependencyManager,
  });

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    context.read<HisWordsBloc>().initializeApp(widget.dependencyManager);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 275),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.fastOutSlowIn,
              child: _buildLandingScreen(),
            ),
            // Add busy indicator if necessary
          ],
        ),
      ),
    );
  }

  Widget _buildLandingScreen() {
    return BlocBuilder<HisWordsBloc, HisWordsAppState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, appState) {
        if (appState.showSplashScreen ?? false) {
          return const SplashScreen();
        }

        return const MainScreen();
      },
    );
  }
}
