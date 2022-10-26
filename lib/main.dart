import 'package:cdmg/dang_tin/CanThueMua.dart';
import 'package:cdmg/dang_tin/DangTin.dart';
import 'package:cdmg/ho_tro/HoTro.dart';
import 'package:cdmg/quan_ly_tai_chinh/QuanLyTaiChinh.dart';
import 'package:cdmg/quan_ly_tin_dang/QuanLyTinDang.dart';
import 'package:cdmg/thanh_toan/ThanhToan.dart';
import 'package:cdmg/tien_ich/TienIch.dart';
import 'package:cdmg/view/OptionView.dart';
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
                                  builder: (context) => CanThueMua()),
                            );
                          }),
                      OptionView(
                          label: "Hỗ trợ",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HoTro()),
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
                                  builder: (context) => QuanLyTinDang()),
                            );
                          }),
                      OptionView(
                          label: "Quản lý tài chính",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuanLyTaiChinh()),
                            );
                          }),
                      OptionView(
                          label: "Thanh toán",
                          callbackFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThanhToan()),
                            );
                          }),
                    ])))));
  }
}
