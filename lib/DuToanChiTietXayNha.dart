import 'package:cdmg/view/SubPlusValue.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DuToanChiTietXayNha());

class DuToanChiTietXayNha extends StatefulWidget {
  const DuToanChiTietXayNha({super.key});

  @override
  State<StatefulWidget> createState() => _duToanChiTietXayNha();
}

class _duToanChiTietXayNha extends State<DuToanChiTietXayNha> {
  onPressTinhLai() {
    setState(() {});
  }

  Color primaryColor = Color(0xFF005BA0);
  String loaiMaiNha = "Bê tông";
  @override
  Widget build(BuildContext context) {
    const appTitle = "Dự toán chi tiết xây nhà";
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
                    title: "Dự toán chi tiết xây nhà",
                    callbackFunction: () {
                      Navigator.pop(context);
                    }),
                InputWithDescribe(
                    label: 'Chiều dài', describe: "m", hideDescribe: false),
                InputWithDescribe(
                    label: 'Chiều rộng', describe: "m", hideDescribe: false),
                Container(
                  width: 200,
                  child: SubPlusValue(label: "Số tầng"),
                ),
                InputWithDescribe(
                    label: 'Chiều cao một tầng',
                    describe: "m",
                    hideDescribe: false),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text("Loại mái nhà",
                        style:
                            TextStyle(color: Color(0xFF222222), fontSize: 16))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: AbsorbPointer(
                        child: Row(children: [
                          Image.asset(
                            loaiMaiNha == "Bê tông"
                                ? 'assets/images/check.png'
                                : 'assets/images/not_check.png',
                            height: 23.25,
                            width: 23.25,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text("Bê tông",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 14)))
                        ]),
                      ),
                      onTap: () {
                        setState(() {
                          loaiMaiNha = "Bê tông";
                        });
                      },
                    ),
                    GestureDetector(
                      child: AbsorbPointer(
                        child: Row(children: [
                          Image.asset(
                            loaiMaiNha == "Ngói"
                                ? 'assets/images/check.png'
                                : 'assets/images/not_check.png',
                            height: 23.25,
                            width: 23.25,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text("Ngói",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 14)))
                        ]),
                      ),
                      onTap: () {
                        setState(() {
                          loaiMaiNha = "Ngói";
                        });
                      },
                    ),
                    GestureDetector(
                      child: AbsorbPointer(
                        child: Row(children: [
                          Image.asset(
                            loaiMaiNha == "Tôn"
                                ? 'assets/images/check.png'
                                : 'assets/images/not_check.png',
                            height: 23.25,
                            width: 23.25,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text("Tôn",
                                  style: TextStyle(
                                      color: Color(0xFF666666), fontSize: 14)))
                        ]),
                      ),
                      onTap: () {
                        setState(() {
                          loaiMaiNha = "Tôn";
                        });
                      },
                    ),
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
