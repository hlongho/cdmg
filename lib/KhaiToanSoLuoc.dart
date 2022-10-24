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

void main() => runApp(const KhaiToanSoLuocXayDung());

class KhaiToanSoLuocXayDung extends StatefulWidget {
  const KhaiToanSoLuocXayDung({super.key});

  @override
  State<StatefulWidget> createState() => _khaiToanSoLuocXayDung();
}

class _khaiToanSoLuocXayDung extends State<KhaiToanSoLuocXayDung> {
  onPressTinhLai() {
    setState(() {});
  }

  Color primaryColor = Color(0xFF005BA0);
  String loaiNha = "Bê tông";
  String doHoanThien = "Cao cấp";
  @override
  Widget build(BuildContext context) {
    const appTitle = "Khái toán sơ lược";
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
                      "Khái toán sơ lược",
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
                    label: 'Diện tích xây dựng',
                    describe: "m",
                    hideDescribe: false),
                Container(
                  width: 200,
                  child: SubPlusValue(label: "Số tầng"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Loại nhà",
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
                              loaiNha == "Biệt thự"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Biệt thự",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            loaiNha = "Biệt thự";
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
                                loaiNha == "Nhà phố"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Nhà phố",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              loaiNha = "Nhà phố";
                            });
                          },
                        )),
                    Flexible(
                        flex: 1,
                        child: GestureDetector(
                          child: AbsorbPointer(
                            child: Row(children: [
                              Image.asset(
                                loaiNha == "Cấp 4"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Cấp 4",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              loaiNha = "Cấp 4";
                            });
                          },
                        )),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Mức độ hoàn thiện",
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
                              doHoanThien == "Cao cấp"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Cao cấp",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            doHoanThien = "Cao cấp";
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
                                doHoanThien == "Khá"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Khá",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              doHoanThien = "Khá";
                            });
                          },
                        )),
                    Flexible(
                        flex: 1,
                        child: GestureDetector(
                          child: AbsorbPointer(
                            child: Row(children: [
                              Image.asset(
                                doHoanThien == "Trung bình"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Trung bình",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              doHoanThien = "Trung bình";
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
          )),
        ));
  }
}
