import 'package:flutter/material.dart';

class SectionViewAll extends StatelessWidget {
  const SectionViewAll({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sell All',
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.teal,
        fontWeight: FontWeight.w500
      ),
    );
  }
}