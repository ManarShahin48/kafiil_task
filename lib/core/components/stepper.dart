import 'package:flutter/material.dart';
import 'package:kafiil_task/core/extentions/padding_ext.dart';

import '../resources/uilites.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key, required this.step1});

  final bool step1;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              StringManager.register,
              style: TextStyle(
                color: ColorManager.primary,
                fontWeight: FontWeightManager.w600,
              ),
            ),
            Text(
              StringManager.complete,
              style: TextStyle(
                color: step1 ? ColorManager.grey500 : ColorManager.primary,
                fontWeight: FontWeightManager.w600,
              ),
            ),
          ],
        ).setHorizontalPadding(context, 0.23),
        SizedBox(
          height: mediaQuery.size.height * 0.01,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: mediaQuery.size.width / 3.5,
                height: 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: ColorManager.primary,
                  border: Border.all(
                    color: ColorManager.primary,
                    width: 2,
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: step1 ? Colors.transparent : ColorManager.primary,
                border: Border.all(
                  color: ColorManager.primary,
                  width: 2,
                ),
              ),
              child: step1
                  ? const Text(
                      "1",
                      style: TextStyle(
                        color: ColorManager.primary,
                      ),
                    )
                  : const Icon(
                      Icons.check,
                      color: ColorManager.white,
                    ),
            ),
            Expanded(
              child: Container(
                width: mediaQuery.size.width / 3.5,
                height: 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: !step1 ? ColorManager.primary : ColorManager.grey500,
                  border: Border.all(
                    color: !step1 ? ColorManager.primary : ColorManager.grey500,
                    width: 2,
                  ),
                ),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: !step1 ? ColorManager.primary : ColorManager.grey500,
                  width: 2,
                ),
              ),
              child: Text(
                "2",
                style: TextStyle(
                  color: !step1 ? ColorManager.primary : ColorManager.grey500,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: mediaQuery.size.width / 3.5,
                height: 2,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: ColorManager.grey500,
                  border: Border.all(
                    color: ColorManager.grey500,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: mediaQuery.size.height * 0.02,
        ),
      ],
    );
  }
}
