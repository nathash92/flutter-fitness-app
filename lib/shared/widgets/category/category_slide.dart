import 'package:fitness/shared/widgets/category/category_card.dart';
import 'package:fitness/shared/widgets/sections/section_header.dart';
import 'package:fitness/shared/widgets/sections/section_view_all.dart';
import 'package:flutter/material.dart';

class CategorySlide extends StatelessWidget {
  const CategorySlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SectionHeader(title: 'Categories'),
            SectionViewAll()
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 140.0,
          ),
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: CategoryCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}
