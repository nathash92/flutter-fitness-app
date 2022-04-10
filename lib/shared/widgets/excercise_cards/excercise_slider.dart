import 'package:fitness/shared/widgets/excercise_cards/excercise_card_three.dart';
import 'package:fitness/shared/widgets/sections/section_header.dart';
import 'package:fitness/shared/widgets/sections/section_view_all.dart';
import 'package:flutter/material.dart';

class ExcerciseSlider extends StatelessWidget {
  final String title;

  const ExcerciseSlider({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionHeader(title: title),
            const SectionViewAll(),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 160.0,
          ),
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 140.0,
                padding: const EdgeInsets.only(right: 20.0),
                child: const ExcerciseCardThree(),
              );
            },
          ),
        ),
      ],
    );
  }
}
