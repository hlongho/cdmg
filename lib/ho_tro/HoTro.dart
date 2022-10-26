import 'dart:developer';
import 'package:cdmg/ho_tro/HuongDanDangTin.dart';
import 'package:cdmg/view/OptionView.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

void main() => runApp(const HoTro());

class HoTro extends StatefulWidget {
  const HoTro({super.key});

  @override
  State<StatefulWidget> createState() => _hoTro();
}

class _hoTro extends State<HoTro> {
  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Hỗ trợ";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            color: Colors.white,
            height: double.infinity,
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
                OptionView(
                  label: "Hướng dẫn đăng tin",
                  callbackFunction: () {
                    log("Hướng dẫn đăng tin");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HuongDanDangTin()));
                  },
                ),
                OptionView(
                  label: "Hướng dẫn thanh toán",
                  callbackFunction: () {
                    log("Hướng dẫn thanh toán");
                  },
                ),
                OptionView(
                  label: "Hướng dẫn up tin",
                  callbackFunction: () {
                    log("Hướng dẫn up tin");
                  },
                ),
                OptionView(
                  label: "Hướng dẫn tạo sàn",
                  callbackFunction: () {
                    log("Hướng dẫn tạo sàn");
                  },
                ),
                OptionView(
                  label: "Quy định đăng tin",
                  callbackFunction: () {
                    log("Quy định đăng tin");
                  },
                ),
              ],
            )),
          ),
        )));
  }
}
