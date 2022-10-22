import 'dart:developer';
import 'package:cdmg/view/SubPlusValue.dart';
import 'package:intl/intl.dart';

import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/DivideDash.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/Steps/StepEditting.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => FormState();
}

class FormState extends State<MyApp> {
  onPressTinhLai() {
    setState(() {});
  }

  cbNamSinh(itemSelected) {
    setState(() {
      _namSinh = itemSelected;
    });
  }

  String _namSinh = "";

  List<String> namSinhList = ["1994", "1995"];

  Color primaryColor = Color(0xFF005BA0);
  String gioiTinh = "Nam";
  String huongNha = "Đông";
  @override
  Widget build(BuildContext context) {
    const appTitle = "Phong thủy văn phòng";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/back.png', height: 16, width: 8),
                    SizedBox(width: 20),
                    Text(
                      "Phong thủy văn phòng",
                      style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                OptionText(
                    title: 'Năm sinh của bạn',
                    titleSelectOption: "Năm sinh của bạn",
                    datas: namSinhList,
                    callbackFunction: cbNamSinh,
                    selected: _namSinh,
                    isRequired: true),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Giới tính",
                        style:
                            TextStyle(color: Color(0xFF222222), fontSize: 16))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        child: AbsorbPointer(
                          child: Row(children: [
                            Image.asset(
                              gioiTinh == "Nam"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Nam",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            gioiTinh = "Nam";
                          });
                        },
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: GestureDetector(
                          child: AbsorbPointer(
                            child: Row(children: [
                              Image.asset(
                                gioiTinh == "Nữ"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Nữ",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              gioiTinh = "Nữ";
                            });
                          },
                        )),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: onPressTinhLai,
                        child: const Text(
                          "Xem kết quả",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                        ))),
              ],
            )),
          ),
        )));
  }
}
