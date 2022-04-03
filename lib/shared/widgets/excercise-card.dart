import 'package:fitness/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ExcerciseCard extends StatelessWidget {
  const ExcerciseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(252, 165, 23, 1),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(
                image: AssetImage('assets/imgs/excercise.png'),
                height: 180.0,
              ),
              Positioned(
                right: 10.0,
                top: 10.0,
                child: _Favourite(),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Full Shot Woman Strecting Arm',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          children: const [
            Text('Beginner'),
            SizedBox(width: 5.0),
            Text('|'),
            SizedBox(width: 5.0),
            Text('50 min')
          ],
        )
      ],
    );
  }
}

class _Favourite extends StatelessWidget {
  const _Favourite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(
          Icons.favorite,
          size: 15.0,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
