import 'package:flutter/material.dart';
import 'package:kafiil_task/core/extentions/padding_ext.dart';
import 'package:kafiil_task/core/resources/uilites.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String title;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: ColorManager.grey50,
            suffixIcon: suffixIcon,
          ),
        ).setOnlyPadding(context, 0.02, 0, 0, 0)
      ],
    ).setOnlyPadding(context, 0.02, 0, 0, 0);
  }
}
