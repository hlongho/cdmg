import 'dart:developer';
import 'dart:ui';
import 'package:cdmg/view/TitleBar.dart';
import 'package:intl/intl.dart';

import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/DivideDash.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/StepEditting.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ChiPhiVayVon());

class ChiPhiVayVon extends StatefulWidget {
  const ChiPhiVayVon({super.key});

  @override
  State<StatefulWidget> createState() => FormState();
}

class FormState extends State<ChiPhiVayVon> {
  final ThongTinCoBanModel _thongTinCoBanModel = ThongTinCoBanModel();
  final MoTaCoBanModel _moTaCoBanModel = MoTaCoBanModel();

  onPressTinhLai() {
    setState(() {});
  }

  Color primaryColor = Color(0xFF005BA0);
  Color inactiveColor = Color(0xFFC4C4C4);
  double _soTienVayValue = 500000;
  double _thoiGianVayValue = 1;
  final formatCurrency = new NumberFormat("#,###", "en_US");
  bool checkedTraLaiChiaDeu = true;
  bool checkedTraLaiGiamDan = false;
  @override
  Widget build(BuildContext context) {
    const appTitle = "Tính chi phí vay vốn";
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
                    title: "Tính chi phí vay vốn",
                    callbackFunction: () {
                      Navigator.pop(context);
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Số tiền vay",
                      style: TextStyle(color: Color(0xFF222222), fontSize: 16),
                    ),
                    Text("${formatCurrency.format(_soTienVayValue)}đ",
                        style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontWeight: FontWeight.w700))
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      overlayShape: SliderComponentShape.noOverlay),
                  child: Slider(
                    value: _soTienVayValue,
                    max: 500000000,
                    divisions: 1000,
                    label: "${formatCurrency.format(_soTienVayValue)}đ",
                    activeColor: primaryColor,
                    inactiveColor: inactiveColor,
                    onChanged: (double value) {
                      setState(() {
                        _soTienVayValue = value;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "500,000đ",
                      style: TextStyle(color: Color(0xFF666666), fontSize: 14),
                    ),
                    Text("500,000,000đ",
                        style:
                            TextStyle(color: Color(0xFF666666), fontSize: 14))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text("Thời gian vay",
                            style: TextStyle(
                                color: Color(0xFF222222), fontSize: 16))),
                    Text("$_thoiGianVayValue tháng",
                        style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontWeight: FontWeight.w700))
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                      overlayShape: SliderComponentShape.noOverlay),
                  child: Slider(
                    value: _thoiGianVayValue,
                    max: 24,
                    min: 0,
                    divisions: 24,
                    label: _thoiGianVayValue.round().toString(),
                    activeColor: primaryColor,
                    inactiveColor: inactiveColor,
                    onChanged: (double value) {
                      setState(() {
                        _thoiGianVayValue = value;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 tháng", style: TextStyle(color: Color(0xFF666666))),
                    Text("24 tháng", style: TextStyle(color: Color(0xFF666666)))
                  ],
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text('Lãi suất vay (%)',
                    style: TextStyle(color: Color(0xFF222222), fontSize: 16)),
                TextField(),
                SizedBox(
                  height: 10,
                ),
                Text("Hình thức vay",
                    style: TextStyle(color: Color(0xFF222222), fontSize: 16)),
                Padding(padding: EdgeInsets.all(8)),
                GestureDetector(
                  child: AbsorbPointer(
                    child: Row(children: [
                      Image.asset(
                        checkedTraLaiChiaDeu
                            ? 'assets/images/check.png'
                            : 'assets/images/not_check.png',
                        height: 23.25,
                        width: 23.25,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text("Trả lãi chia đều và số tiền vay cuối kỳ",
                              style: TextStyle(
                                  color: Color(0xFF666666), fontSize: 14)))
                    ]),
                  ),
                  onTap: () {
                    setState(() {
                      checkedTraLaiChiaDeu = !checkedTraLaiChiaDeu;
                      if (checkedTraLaiChiaDeu) checkedTraLaiGiamDan = false;
                    });
                  },
                ),
                Padding(padding: EdgeInsets.all(8)),
                GestureDetector(
                  child: AbsorbPointer(
                    child: Row(children: [
                      Image.asset(
                        checkedTraLaiGiamDan
                            ? 'assets/images/check.png'
                            : 'assets/images/not_check.png',
                        height: 23.25,
                        width: 23.25,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text("Trả lãi giảm dần và vốn hàng tháng",
                              style: TextStyle(
                                  color: Color(0xFF666666), fontSize: 14)))
                    ]),
                  ),
                  onTap: () {
                    setState(() {
                      checkedTraLaiGiamDan = !checkedTraLaiGiamDan;
                      if (checkedTraLaiGiamDan) checkedTraLaiChiaDeu = false;
                    });
                  },
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: onPressTinhLai,
                        child: const Text(
                          "Tính lãi",
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
