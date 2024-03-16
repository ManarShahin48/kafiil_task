import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          Navigator.canPop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
