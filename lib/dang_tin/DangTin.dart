import 'package:cdmg/dang_tin/MoTa.dart';
import 'package:cdmg/dang_tin/ThongTinCoBan.dart';
import 'package:cdmg/dang_tin/ThongTinLienHe.dart';
import 'package:cdmg/view/StepEditting.dart';
import 'package:cdmg/view/TitleBar.dart';
import 'package:flutter/material.dart';

class DangTin extends StatefulWidget {
  const DangTin({super.key});

  @override
  State<StatefulWidget> createState() => _dangTin();
}

class _dangTin extends State<DangTin> {
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

  Color primaryColor = Color(0xFF005BA0);

  @override
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
                      TitleBar(
                          title: _index == 0
                              ? "Thông tin cơ bản"
                              : _index == 1
                                  ? "Mô tả cơ bản"
                                  : "Thông tin liên hệ",
                          callbackFunction: () {
                            Navigator.pop(context);
                          }),
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
