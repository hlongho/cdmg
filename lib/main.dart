import 'package:cdmg/CanThueMua.dart';
import 'package:cdmg/DangTin.dart';
import 'package:cdmg/HoTro.dart';
import 'package:cdmg/QuanLyTaiChinh.dart';
import 'package:cdmg/QuanLyTinDang.dart';
import 'package:cdmg/ThanhToan.dart';
import 'package:cdmg/TienIch.dart';
import 'package:cdmg/view/OptionView.dart';
import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation Basics',
      home: Main(),
    ));

class Main extends StatelessWidget {
  Main({super.key});

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
                    child: Column(children: [
                      OptionView(
                          label: "Đăng tin",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DangTin()),
                            );
                          }),
                      OptionView(
                          label: "Đăng tin cần mua thuê",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CanThueMua()),
                            );
                          }),
                      OptionView(
                          label: "Hỗ trợ",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HoTro()),
                            );
                          }),
                      OptionView(
                          label: "Tiện ích",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TienIch()),
                            );
                          }),
                      OptionView(
                          label: "Quản lý tin đăng",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuanLyTinDang()),
                            );
                          }),
                      OptionView(
                          label: "Quản lý tài chính",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuanLyTaiChinh()),
                            );
                          }),
                      OptionView(
                          label: "Thanh toán",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThanhToan()),
                            );
                          }),
                    ])))));
  }
}
