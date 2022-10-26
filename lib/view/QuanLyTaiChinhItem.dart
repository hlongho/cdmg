import 'package:flutter/material.dart';

class QuanLyTaiChinhItem extends StatelessWidget {
  QuanLyTaiChinhItem(
      {Key? key,
      required this.label,
      required this.icon,
      this.isMessage = false,
      this.numberMessage = 0,
      required this.callbackFunction})
      : super(key: key);
  final String label;
  final String icon;
  bool isMessage;
  int numberMessage;
  final Function callbackFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AbsorbPointer(
          child: Container(
              margin: EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  border: Border.all(color: Color(0xFFE0E0E0), width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 36,
                      height: 36,
                      padding: EdgeInsets.all(8),
                      margin: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 12, right: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF005BA0),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(200),
                        ),
                      ),
                      child: Image.asset('assets/images/$icon')),
                  Expanded(
                      child: Text(
                    label,
                    style: TextStyle(fontSize: 16, color: Color(0xFF222222)),
                  )),
                  isMessage == true
                      ? Container(
                          alignment: Alignment.center,
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                              color: Color(0xFF005BA0),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Text(
                            "$numberMessage",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Image.asset(
                            'assets/images/right.png',
                            height: 12,
                            width: 6,
                          ))
                ],
              ))),
      onTap: () {
        callbackFunction();
      },
    );
  }
}
