import 'package:fitness/shared/widgets/excercise_cards/excercise_card_one.dart';
import 'package:fitness/shared/widgets/excercise_cards/excercise_card_three.dart';
import 'package:fitness/shared/widgets/excercise_cards/excercise_card_two.dart';
import 'package:flutter/material.dart';

class ExcerciseCard extends StatelessWidget {
  int template;

  ExcerciseCard({
    Key? key,
    required this.template,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return getCard();
  }

  getCard() {
    switch (template) {
      case 1:
        return const ExcerciseCardOne();
      case 2:
        return const ExcerciseCardTwo();
      case 3:
        return const ExcerciseCardThree();
      default:
        return const ExcerciseCardOne();
    }
  }
}
