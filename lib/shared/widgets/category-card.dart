import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 85.0,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(237, 237, 237, 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Image(
              image: AssetImage('assets/imgs/category.webp'),
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Yoga',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
