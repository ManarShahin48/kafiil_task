import 'package:flutter/material.dart';
import '../Resources/uilites.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({
    super.key,
    required this.text,
    this.three = false,
    required this.radio1,
    required this.radio2,
    this.radio3,
  });

  final String text;
  final bool? three;
  final String radio1;
  final String radio2;
  final String? radio3;

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int selectedValue = 1;

  @override
  void initState() {
    super.initState();
    selectedValue = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(widget.radio1),
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => ColorManager.primary),
                  value: 1,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(widget.radio2),
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => ColorManager.primary),
                  value: 2,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ),
            ),
            if (widget.three!)
              Expanded(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(widget.radio3!),
                  leading: Radio(
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => ColorManager.primary),
                    value: 3,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                ),
              ),
          ],
        )
      ],
    );
  }
}
