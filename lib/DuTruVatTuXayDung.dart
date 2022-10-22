import 'dart:developer';
import 'package:cdmg/view/SubPlusValue.dart';
import 'package:intl/intl.dart';

import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/DivideDash.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/StepEditting.dart';
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

  Color primaryColor = Color(0xFF005BA0);
  String sanNha = "30x30";
  String tuongNha = "Trét bả và Sơn";
  String cuaPhong = "Chỉ có 1 cửa đi";
  String doHoanThien = "Cao cấp";
  @override
  Widget build(BuildContext context) {
    const appTitle = "Dự trù vật tư xây dựng";
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
                      "Dự trù vật tư xây dựng",
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
                InputWithDescribe(
                    label: 'Chiều rộng phòng',
                    describe: "m",
                    hideDescribe: false),
                InputWithDescribe(
                    label: 'Chiều dài phòng',
                    describe: "m",
                    hideDescribe: false),
                InputWithDescribe(
                    label: 'Chiều cao phòng',
                    describe: "m",
                    hideDescribe: false),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Sàn nhà",
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
                              sanNha == "30x30"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Lát gạch 30x30",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            sanNha = "30x30";
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
                                sanNha == "40X40"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Lát gạch 40x40",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              sanNha = "40X40";
                            });
                          },
                        )),
                  ],
                ),
                SizedBox(height: 12),
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
                              sanNha == "50x50"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Lát gạch 50x50",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            sanNha = "50x50";
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
                                sanNha == "60x60"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Lát gạch 60x60",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              sanNha = "60x60";
                            });
                          },
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Tường nhà",
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
                              tuongNha == "Trét bả và Sơn"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Trét bả và Sơn",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            tuongNha = "Trét bả và Sơn";
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
                                tuongNha == "Ốp gạch 40x40"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Ốp gạch 40x40",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              tuongNha = "Ốp gạch 40x40";
                            });
                          },
                        )),
                  ],
                ),
                SizedBox(height: 12),
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
                              tuongNha == "Ốp gạch 50x50"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Ốp gạch 50x50",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            tuongNha = "Ốp gạch 50x50";
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
                                tuongNha == "Ốp gạch 60x60"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Ốp gạch 60x60",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              tuongNha = "Ốp gạch 60x60";
                            });
                          },
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Cửa phòng",
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
                              cuaPhong == "Chỉ 1 có cửa đi"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Chỉ 1 có cửa đi",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            cuaPhong = "Chỉ 1 có cửa đi";
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
                                cuaPhong == "Chỉ 1 có cửa đi và 1 cửa sổ"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Chỉ 1 có cửa đi\nvà 1 cửa sổ",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              cuaPhong = "Chỉ 1 có cửa đi và 1 cửa sổ";
                            });
                          },
                        )),
                  ],
                ),
                SizedBox(height: 12),
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
                              cuaPhong == "Chỉ 1 có cửa đi và 2 cửa sổ"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  "Chỉ 1 có cửa đi\nvà 2 cửa sổ",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 14),
                                ))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            cuaPhong = "Chỉ 1 có cửa đi và 2 cửa sổ";
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
                                cuaPhong == "Có tổng cộng 4 cửa"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Có tổng cộng 4 cửa",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              cuaPhong = "Có tổng cộng 4 cửa";
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
