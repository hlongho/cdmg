import 'package:cdmg/view/QuanLyTaiChinhItem.dart';
import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

class ThongTinSoDu extends StatelessWidget {
  ThongTinSoDu({super.key});

  Color primaryColor = Color(0xFF005BA0);
  TextStyle mainStyle = TextStyle(color: Color(0xFF222222), fontSize: 16);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Thông tin số dư";
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
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("[123456]",
                                    style: TextStyle(
                                        color: Color(0xFF005BA0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                Text("Hết hạn 03/10/2023",
                                    style: TextStyle(
                                        color: Color(0xFF005BA0),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))
                              ])),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tài khoản chính", style: mainStyle),
                                Text("0 đ", style: mainStyle)
                              ])),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tài khoản thưởng", style: mainStyle),
                                Text("0 đ", style: mainStyle)
                              ])),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tài khoản tặng", style: mainStyle),
                                Text("50.000 đ", style: mainStyle)
                              ])),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tài khoản gói", style: mainStyle),
                                Text("0 đ", style: mainStyle)
                              ]))
                    ],
                  ),
                )
              ],
            )),
          ),
        )));
  }
}
