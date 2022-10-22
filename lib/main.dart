import 'dart:developer';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/StepEditting.dart';
import 'package:flutter/material.dart';

import 'MoTa.dart';
import 'ThongTinCoBan.dart';
import 'ThongTinLienHe.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => FormState();
}

class FormState extends State<MyApp> {
  int _index = 0;

  onPressPrevious() {
    if (_index > 0) {
      setState(() {
        _index = _index - 1;
      });
    }
  }

  onPressNext() {
    if (_index >= 0 && _index < 2) {
      setState(() {
        _index = _index + 1;
      });
    }
  }

  @override
  Color primaryColor = Color(0xFF005BA0);
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
          body: SafeArea(
              child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/back.png',
                              height: 16, width: 8),
                          SizedBox(width: 20),
                          Text(
                            _index == 0
                                ? "Thông tin cơ bản"
                                : _index == 1
                                    ? "Mô tả cơ bản"
                                    : "Thông tin liên hệ",
                            style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StepEditting(
                                  label: "1",
                                  status: _index == 0
                                      ? Status.Editting
                                      : Status.Completed,
                                  isLast: false),
                              StepEditting(
                                  label: "2",
                                  status: _index == 1
                                      ? Status.Editting
                                      : _index < 1
                                          ? Status.Values
                                          : Status.Completed,
                                  isLast: false),
                              StepEditting(
                                label: "3",
                                status: _index == 2
                                    ? Status.Editting
                                    : Status.Values,
                                isLast: true,
                              ),
                            ],
                          )),
                      Expanded(
                          child: SingleChildScrollView(
                        child: Container(
                            child: _index == 0
                                ? ThongTinCoBan()
                                : _index == 1
                                    ? MoTa()
                                    : ThongTinLienHe()),
                      )),
                      if (_index != 2)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                flex: 1,
                                child: OutlinedButton(
                                  onPressed: onPressPrevious,
                                  child: Text("Quay lại",
                                      style: TextStyle(
                                          color: primaryColor, fontSize: 16)),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        width: 1.0, color: primaryColor),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: ElevatedButton(
                                    onPressed: onPressNext,
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                primaryColor)),
                                    child: const Text("Tiếp theo",
                                        style: TextStyle(fontSize: 16)),
                                  ))
                            ],
                          ),
                        ),
                      if (_index == 2)
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 12),
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: onPressNext,
                                child: const Text("Đăng tin"),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(primaryColor),
                                )))
                    ],
                  )))),
    );
  }
}
