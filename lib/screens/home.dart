import 'package:fitness/shared/widgets/category-slide.dart';
import 'package:fitness/shared/widgets/excercise-card.dart';
import 'package:fitness/shared/widgets/excercise-start-card.dart';
import 'package:fitness/shared/widgets/section-header.dart';
import 'package:fitness/shared/widgets/section-view-all.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _PageElGap(),
            const _PageElGap(),
            const _PagePadder(widget: _GreetUser()),
            const _PageElGap(),
            const _PagePadder(widget: _PageSearch()),
            const _PageElGap(),
            const _PagePadder(widget: ExcerciseStartCard()),
            const _PageElGap(),
            _PagePadder(
              widget: Column(
                children: const [CategorySlide(), Divider(thickness: 1.0)],
              ),
            ),
            const _PageElGap(),
            const _PagePadder(widget: ExcerciseList())
          ],
        ),
      ),
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
        border: const OutlineInputBorder(),
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search_outlined),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}

class ExcerciseList extends StatelessWidget {
  const ExcerciseList({Key? key}) : super(key: key);

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
        const ExcerciseCard(),
        const SizedBox(
          height: 10.0,
        ),
        const Divider(
          thickness: 1.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const ExcerciseCard(),
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
