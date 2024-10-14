import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:his_words/blocs/app/base_cubit.dart';
import 'package:his_words/common/styles/app_colors.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: _buildScreen(currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: HisWordsColors.white,
            unselectedItemColor: HisWordsColors.gray4,
            currentIndex: currentIndex,
            onTap: (index) {
              context.read<BaseCubit>().selectTab(index);
            },
            items: [
              _buildBottomNavigationBarItem(
                  title: "Home", icon: "assets/svgs/kHome.svg"),
              _buildBottomNavigationBarItem(
                  title: "Bible", icon: "assets/svgs/kHome.svg"),
            ],
          ),
        );
      },
    );
  }

  Widget _buildScreen(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const Center(child: Text("Home"));
      case 1:
        return const Center(child: Text("Bible"));

      default:
        return const SizedBox();
    }
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String title,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          HisWordsColors.gray3,
          BlendMode.srcIn,
        ),
      ),
      activeIcon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          HisWordsColors.white,
          BlendMode.srcIn,
        ),
      ),
      label: title,
    );
  }
}
