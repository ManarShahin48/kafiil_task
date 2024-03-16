import 'package:flutter/material.dart';
import 'package:kafiil_task/core/resources/uilites.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.width,
    required this.onPressed,
  });

  final String text;
  final double? width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: mediaQuery.size.height * 0.07,
      width: width ?? mediaQuery.size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return ColorManager.grey500;
              }
              return ColorManager.primary;
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: ColorManager.white,
            fontWeight: FontWeightManager.w500,
            fontSize: FontSize.s16,
          ),
        ),
      ),
    );
  }
}
