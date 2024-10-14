import 'package:flutter/material.dart';

class BibleScreen extends StatefulWidget {
  const BibleScreen({super.key});

  @override
  State<BibleScreen> createState() => _BibleScreenState();
}

class _BibleScreenState extends State<BibleScreen> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _scrollController,
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildMobileHeader(context, ref, translations, books, chapter),
          reader(),
        ],
      ),
    );
  }

  Widget reader() {
    return SliverToBoxAdapter(
      child: BibleReader(chapter: chapter, scrollController: _scrollController),
    );
  }
}
