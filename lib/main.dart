import 'dart:developer';
import 'package:cdmg/CanThueMua.dart';
import 'package:cdmg/DangTin.dart';
import 'package:cdmg/HoTro.dart';
import 'package:cdmg/TienIch.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/OptionView.dart';
import 'package:cdmg/view/StepEditting.dart';
import 'package:flutter/material.dart';

import 'MoTa.dart';
import 'ThongTinCoBan.dart';
import 'ThongTinLienHe.dart';

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
                      Row(
                        children: [
                          Image.asset('assets/images/back.png',
                              height: 16, width: 8),
                          SizedBox(width: 20),
                          Text(
                            "main",
                            style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
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
                    ])))));
  }
}
