import 'package:fitness/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ExcerciseStartCard extends StatelessWidget {
  const ExcerciseStartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 147, 100, 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fit Young Woman Doing \nBattle Rope Training',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    'The standard chunk of Lorem Ipsum used since the 1500s.',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Start Excercise'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            const Image(
              image: AssetImage('assets/imgs/category.webp'),
              width: 95.0,
            )
          ],
        ),
      ),
    );
  }
}
