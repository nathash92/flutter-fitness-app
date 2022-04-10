import 'package:fitness/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;

  const AppHeader({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: IconButton(
        color: AppColors.primaryColor,
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.notification_add_outlined),
          onPressed: () {},
          color: AppColors.primaryColor,
        ),
      ],
    );
  }
}
