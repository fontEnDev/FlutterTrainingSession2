import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_circle_left_rounded,
          size: 45,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey[400]),
            width: 40,
            height: 40,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 22,
                ))),
        const SizedBox(width: 20,)
      ],
    );
  }

}