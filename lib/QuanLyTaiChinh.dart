import 'package:cdmg/LichSuGiaoDich.dart';
import 'package:cdmg/TangDiemThanhVien.dart';
import 'package:cdmg/ThongTinSoDu.dart';
import 'package:cdmg/view/QuanLyTaiChinhItem.dart';
import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:cdmg/view/TinNhanTangDiem.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

class QuanLyTaiChinh extends StatefulWidget {
  const QuanLyTaiChinh({super.key});

  @override
  State<StatefulWidget> createState() => _quanLyTaiChinh();
}

class _quanLyTaiChinh extends State<QuanLyTaiChinh> {
  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Quản lý tài chính";
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
                QuanLyTaiChinhItem(
                    label: "Thông tin số dư",
                    icon: "thong_tin_so_du.png",
                    callbackFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThongTinSoDu()));
                    }),
                QuanLyTaiChinhItem(
                    label: "Lịch sử giao dịch",
                    icon: "lich_su_giao_dich.png",
                    callbackFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LichSuGiaoDich()));
                    }),
                QuanLyTaiChinhItem(
                    label: "Tặng điểm thành viên",
                    icon: "tang_diem.png",
                    callbackFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TangDiemThanhVien()));
                    }),
                QuanLyTaiChinhItem(
                    label: "Lịch sử tặng điểm",
                    icon: "lich_su_tang_diem.png",
                    callbackFunction: () {}),
                QuanLyTaiChinhItem(
                    label: "Tin nhắn tặng điểm",
                    icon: "tin_nhan_tang_diem.png",
                    isMessage: true,
                    numberMessage: 10,
                    callbackFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TinNhanTangDiem()));
                    }),
                QuanLyTaiChinhItem(
                    label: "Tin nhắn",
                    icon: "tin_nhan.png",
                    isMessage: true,
                    numberMessage: 0,
                    callbackFunction: () {}),
              ],
            )),
          ),
        )));
  }
}
