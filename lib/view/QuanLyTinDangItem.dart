import 'package:flutter/material.dart';

class QuanLyTinDangItem extends StatelessWidget {
  const QuanLyTinDangItem(
      {Key? key,
      required this.label,
      required this.soTin,
      required this.callbackFunction})
      : super(key: key);
  final String label;
  final int soTin;
  final Function callbackFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AbsorbPointer(
          child: Container(
              margin: EdgeInsets.only(top: 20, right: 16, left: 16),
              decoration: BoxDecoration(
                  color: Color(0x73005BA0),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 16),
                    height: 67,
                    width: 76,
                    decoration: BoxDecoration(
                        color: Color(0x97005BA0),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: Text(
                      "$soTin",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ))),
      onTap: () {
        callbackFunction();
      },
    );
  }
}
