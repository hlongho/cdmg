import 'package:flutter/material.dart';

class OptionView extends StatelessWidget {
  const OptionView(
      {Key? key, required this.label, required this.callbackFunction})
      : super(key: key);
  final String label;
  final Function callbackFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AbsorbPointer(
          child: Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  border: Border.all(color: Color(0xFFE0E0E0), width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: TextStyle(fontSize: 16, color: Color(0xFF222222)),
                  ),
                  Image.asset(
                    'assets/images/right.png',
                    height: 12,
                    width: 6,
                  )
                ],
              ))),
      onTap: () {
        callbackFunction();
      },
    );
  }
}
