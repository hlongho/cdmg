import 'package:cdmg/model/LichSuGiaoDichModel.dart';
import 'package:cdmg/view/QuanLyTaiChinhItem.dart';
import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

class ChiTietGiaoDich extends StatelessWidget {
  ChiTietGiaoDich({super.key, required this.model});
  final LichSuGiaoDichModel model;

  Color primaryColor = Color(0xFF005BA0);
  TextStyle mainStyle = TextStyle(color: Color(0xFF222222), fontSize: 16);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Lịch sử giao dịch";
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.title.toString(),
                          style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(model.time.toString(),
                            style: TextStyle(
                                color: Color(0xFF999999), fontSize: 14)),
                        Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Text(model.content.toString(),
                                style: TextStyle(
                                    color: Color(0xFF222222), fontSize: 16)))
                      ],
                    ))
              ],
            )),
          ),
        )));
  }
}
