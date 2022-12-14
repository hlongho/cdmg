import 'package:cdmg/view/TitleBar.dart';

import 'package:cdmg/view/OptionText.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XuHuongPhongThuy());

class XuHuongPhongThuy extends StatefulWidget {
  const XuHuongPhongThuy({super.key});

  @override
  State<StatefulWidget> createState() => _xuHuongPhongThuy();
}

class _xuHuongPhongThuy extends State<XuHuongPhongThuy> {
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
    const appTitle = "Xu hướng phong thủy";
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
                TitleBar(
                    title: appTitle,
                    callbackFunction: () {
                      Navigator.pop(context);
                    }),
                OptionText(
                    title: 'Năm sinh',
                    titleSelectOption: "Chọn năm sinh",
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
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 12),
                    child: Text("Hướng nhà",
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
                              huongNha == "Đông"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Đông",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            huongNha = "Đông";
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
                                huongNha == "Tây"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Tây",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              huongNha = "Tây";
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
                              huongNha == "Nam"
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
                            huongNha = "Nam";
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
                                huongNha == "Bắc"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Bắc",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              huongNha = "Bắc";
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
                              huongNha == "Đông Bắc"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Đông Bắc",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            huongNha = "Đông Bắc";
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
                                huongNha == "Đông Nam"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Đông Nam",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              huongNha = "Đông Nam";
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
                              huongNha == "Tây Bắc"
                                  ? 'assets/images/check.png'
                                  : 'assets/images/not_check.png',
                              height: 23.25,
                              width: 23.25,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text("Tây Bắc",
                                    style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14)))
                          ]),
                        ),
                        onTap: () {
                          setState(() {
                            huongNha = "Tây Bắc";
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
                                huongNha == "Tây Nam"
                                    ? 'assets/images/check.png'
                                    : 'assets/images/not_check.png',
                                height: 23.25,
                                width: 23.25,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text("Tây Nam",
                                      style: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: 14)))
                            ]),
                          ),
                          onTap: () {
                            setState(() {
                              huongNha = "Tây Nam";
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
