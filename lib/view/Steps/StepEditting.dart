import 'package:flutter/material.dart';

class StepEditting extends StatefulWidget {
  final String label;
  final Status status;
  bool isLast;
  StepEditting(
      {Key? key,
      required this.label,
      required this.status,
      required this.isLast})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _stepEditting();
}

class _stepEditting extends State<StepEditting> {
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
                color: widget.status == Status.Values
                    ? Color(0xFFC4C4C4)
                    : primaryColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(200),
            ),
            color: widget.status == Status.Values ? Colors.white : primaryColor,
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                widget.status == Status.Completed
                    ? Image.asset(
                        'assets/images/check_white.png',
                        height: 9,
                        width: 12,
                      )
                    : Text(
                        widget.label,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Arial",
                            color: widget.status == Status.Editting
                                ? Colors.white
                                : Color(0xFF666666)),
                        textAlign: TextAlign.center,
                      ),
              ],
            ),
          ),
        ),
        if (!widget.isLast)
          Container(
            width: 40,
            height: 2,
            color: widget.status == Status.Completed
                ? primaryColor
                : Color(0xFFC4C4C4),
          ),
      ],
    );
  }
}

enum Status { Completed, Editting, Values }
