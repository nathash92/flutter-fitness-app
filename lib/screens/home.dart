import 'package:fitness/constants/app_colors.dart';
import 'package:fitness/shared/widgets/app_bottom_nav/app_bottom_nav.dart';
import 'package:fitness/shared/widgets/app_header/app_header.dart';
import 'package:fitness/shared/widgets/category/category_slide.dart';
import 'package:fitness/shared/widgets/excercise_cards/excercise_card.dart';
import 'package:fitness/shared/widgets/excercise_cards/excercise_slider.dart';
import 'package:fitness/shared/widgets/excercise_start_card.dart';
import 'package:fitness/shared/widgets/sections/section_header.dart';
import 'package:fitness/shared/widgets/sections/section_view_all.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppHeader(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _PageElGap(),
            const _PagePadder(widget: _GreetUser()),
            const _PageElGap(),
            const _PagePadder(widget: _PageSearch()),
            const _PageElGap(),
            const _PagePadder(widget: ExcerciseStartCard()),
            const _PageElGap(),
            _PagePadder(
                widget: Column(children: const [
              CategorySlide(),
              Divider(thickness: 1.0)
            ])),
            const _PageElGap(),
            _PagePadder(widget: ExcerciseList()),
            const _PageElGap(),
            _PagePadder(widget: _AdditionalExcerciseList()),
            const _PageElGap(),
            const _PagePadder(widget: ExcerciseSlider(title: 'Just for you')),
            const _PageElGap(),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}

class _GreetUser extends StatelessWidget {
  const _GreetUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Hello, Good Morning',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        Text(
          'Nathash Kumar V',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class _PageElGap extends StatelessWidget {
  const _PageElGap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20.0,
    );
  }
}

class _PagePadder extends StatelessWidget {
  final Widget widget;

  const _PagePadder({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: widget,
    );
  }
}

class _PageSearch extends StatelessWidget {
  const _PageSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search_outlined),
        filled: true,
        fillColor: AppColors.inputBgColor,
      ),
    );
  }
}

class ExcerciseList extends StatelessWidget {
  final List<int> items = [1, 2, 3, 4, 5];

  ExcerciseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SectionHeader(title: 'Popular Excercises'),
            SectionViewAll()
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        for (var i in items) _buildCard()
      ],
    );
  }

  Widget _buildCard() {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        ExcerciseCard(
          template: 1,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Divider(
          thickness: 1.0,
        ),
      ],
    );
  }

}

class _AdditionalExcerciseList extends StatelessWidget {
  final List<int> items = [1, 2, 3, 4, 5];

  _AdditionalExcerciseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(items.toString());
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SectionHeader(title: 'Additional Excercise'),
          SectionViewAll()
        ],
      ),
      const SizedBox(
        height: 15.0,
      ),
      for (var i in items) _buildCard()
    ]);
  }

  Widget _buildCard() {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        ExcerciseCard(
          template: 2,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Divider(
          thickness: 1.0,
        ),
      ],
    );
  }
}
