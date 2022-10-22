import 'package:flutter/material.dart';

class SubPlusValue extends StatefulWidget {
  final String label;
  SubPlusValue({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _subPlusValue();
}

class _subPlusValue extends State<SubPlusValue> {
  int value = 1;

  pressPlus() {
    setState(() {
      value += 1;
    });
  }

  pressMinus() {
    if (value > 0) {
      setState(() {
        value -= 1;
      });
    }
  }

  Color primaryColor = Color(0xFF005BA0);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 6, bottom: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
            ),
            Container(
              margin: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFC4C4C4)),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Row(children: [
                GestureDetector(
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(4),
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF666666),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Image.asset('assets/images/minus.png',
                            width: 8, height: 8)),
                    onTap: () => pressMinus()),
                Expanded(
                    child: Text(
                  "$value",
                  textAlign: TextAlign.center,
                )),
                GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.only(right: 1),
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF666666),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Image.asset('assets/images/plus.png',
                          width: 8, height: 8),
                    ),
                    onTap: () => pressPlus())
              ]),
            )
          ],
        ));
  }
}
