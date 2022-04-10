import 'package:flutter/material.dart';

class Gapper extends StatelessWidget {
  final String? type;
  final double gap;

  const Gapper({
    Key? key,
    this.type = "vertical",
    required this.gap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(type);
    if (type == 'vertical') {
      return SizedBox(
        height: gap,
      );
    } else {
      return SizedBox(
        width: gap,
      );
    }
  }
}
