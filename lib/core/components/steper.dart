import 'package:flutter/material.dart';
import 'package:kafiil_task/core/resources/string_manager.dart';

import '../resources/uilites.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({
    super.key,
    required this.step1,
    required this.step2,
  });

  final Widget step1;
  final Widget step2;

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      elevation: 0,
      type: StepperType.horizontal,
      // onStepCancel: () {
      //   if (_index > 0) {
      //     setState(() {
      //       _index -= 1;
      //     });
      //   }
      // },
      // onStepContinue: () {
      //   if (_index <= 0) {
      //     setState(() {
      //       _index += 1;
      //     });
      //   }
      // },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      stepIconBuilder: (s, stepState){
        print(s);
        print(stepState);
      },
      connectorColor:
          MaterialStateColor.resolveWith((states){
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }else{
              return Colors.blue;
            }
          }),
      steps: <Step>[
        Step(
          title: const Text(StringManager.register),
          content: Container(
            alignment: Alignment.centerLeft,
            child: widget.step1,
          ),
        ),
        Step(
          title: const Text(StringManager.complete),
          content: widget.step2,
        ),
      ],
    );
  }
}
