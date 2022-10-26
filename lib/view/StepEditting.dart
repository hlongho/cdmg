import 'package:flutter/material.dart';

class StepEditting extends StatelessWidget {
  final String label;
  final Status status;
  bool isLast;
  StepEditting(
      {Key? key,
      required this.label,
      required this.status,
      required this.isLast})
      : super(key: key);

  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          margin: const EdgeInsets.only(left: 4, right: 4),
          decoration: BoxDecoration(
            border: Border.all(
                width: 2,
                color:
                    status == Status.Values ? Color(0xFFC4C4C4) : primaryColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(200),
            ),
            color: status == Status.Values ? Colors.white : primaryColor,
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                status == Status.Completed
                    ? Image.asset(
                        'assets/images/check_white.png',
                        height: 9,
                        width: 12,
                      )
                    : Text(
                        label,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Arial",
                            color: status == Status.Editting
                                ? Colors.white
                                : Color(0xFF666666)),
                        textAlign: TextAlign.center,
                      ),
              ],
            ),
          ),
        ),
        if (!isLast)
          Container(
            width: 40,
            height: 2,
            color:
                status == Status.Completed ? primaryColor : Color(0xFFC4C4C4),
          ),
      ],
    );
  }
}

enum Status { Completed, Editting, Values }
