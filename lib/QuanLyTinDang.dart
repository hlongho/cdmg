import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

void main() => runApp(const QuanLyTinDang());

class QuanLyTinDang extends StatefulWidget {
  const QuanLyTinDang({super.key});

  @override
  State<StatefulWidget> createState() => _quanLyTinDang();
}

class _quanLyTinDang extends State<QuanLyTinDang> {
  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Quản lý tin đăng";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            color: Colors.white,
            height: double.infinity,
            padding: EdgeInsets.only(top: 16),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TitleBar(
                        title: appTitle,
                        callbackFunction: () {
                          Navigator.pop(context);
                        })),
                Divider(height: 1, color: Color(0xFFE0E0E0)),
                QuanLyTinDangItem(
                    label: "Sản phẩm ủy quyền",
                    soTin: 10,
                    callbackFunction: () {}),
                QuanLyTinDangItem(
                    label: "Tin đăng của tôi",
                    soTin: 0,
                    callbackFunction: () {}),
                QuanLyTinDangItem(
                    label: "Tin đăng quan tâm",
                    soTin: 5,
                    callbackFunction: () {}),
                QuanLyTinDangItem(
                    label: "Tin lưu trữ", soTin: 0, callbackFunction: () {}),
                QuanLyTinDangItem(
                    label: "Bất động sản đề xuất",
                    soTin: 35,
                    callbackFunction: () {}),
                QuanLyTinDangItem(
                    label: "Nguồn hàng cơ hội",
                    soTin: 0,
                    callbackFunction: () {})
              ],
            )),
          ),
        )));
  }
}
