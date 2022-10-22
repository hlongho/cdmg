import 'package:flutter/material.dart';

class InputWithDescribe extends StatefulWidget {
  final String label;
  final String describe;
  final bool hideDescribe;
  TextInputType? keyboardType;
  InputWithDescribe(
      {Key? key,
      required this.label,
      required this.describe,
      required this.hideDescribe,
      this.keyboardType})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _inputWithDescribe();
}

class _inputWithDescribe extends State<InputWithDescribe> {
  int tieudelength = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          style: TextStyle(color: Color(0xFF222222)),
          keyboardType: widget.keyboardType,
          scrollPadding: const EdgeInsets.all(4),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.only(top: 4, bottom: 4),
            labelStyle: TextStyle(fontSize: 14.0, color: Color(0xFF666666)),
            labelText: widget.label,
          ),
          onChanged: (value) {
            setState(() {
              tieudelength = value.length;
            });
          },
        ),
        Visibility(
            visible: (widget.hideDescribe && tieudelength == 0) ||
                (!widget.hideDescribe),
            child: Expanded(
                child: Align(
                    heightFactor: 3,
                    alignment: Alignment.bottomRight,
                    child: Text(
                      widget.describe,
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF999999),
                          fontFamily: 'Montserrat'),
                    ))))
      ],
    );
  }
}
