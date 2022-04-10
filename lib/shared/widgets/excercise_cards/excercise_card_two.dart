import 'package:flutter/material.dart';

class ExcerciseCardTwo extends StatelessWidget {
  const ExcerciseCardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 90.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color.fromRGBO(201, 199, 200, 1),
          ),
          padding: const EdgeInsets.all(10.0),
          child: const Image(
            image: AssetImage('assets/imgs/excercise.png'),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Excercises with Jumping Rope',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: const [
                Text('110 cal'),
                SizedBox(
                  width: 5.0,
                ),
                Text('|'),
                SizedBox(
                  width: 5.0,
                ),
                Text('10 min'),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              'Beginner',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            )
          ],
        )
      ],
    );
  }
}
