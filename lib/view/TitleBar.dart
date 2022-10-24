import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar(
      {Key? key, required this.title, required this.callbackFunction})
      : super(key: key);
  final String title;
  final Function callbackFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AbsorbPointer(
          child: Container(
        // padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            Image.asset('assets/images/back.png', height: 16, width: 8),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      )),
      onTap: () {
        callbackFunction();
      },
    );
  }
}
