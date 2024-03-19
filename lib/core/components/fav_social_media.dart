import 'package:flutter/material.dart';

import '../resources/uilites.dart';

class FavSocialMedia extends StatelessWidget {
  const FavSocialMedia({
    super.key,
    required this.checked,
    required this.onPressed,
    required this.text,
  });

  final bool checked;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                !checked
                    ? Icons.check_box
                    : Icons.check_box_outline_blank_outlined,
                color: ColorManager.primary,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: FontSize.s14,
                fontWeight: FontWeightManager.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
