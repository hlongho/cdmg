import 'dart:developer';
import 'package:cdmg/thanh_toan/NapTienVaoTaiKhoan.dart';
import 'package:cdmg/view/OptionView.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

class ThanhToan extends StatelessWidget {
  ThanhToan({super.key});

  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Thanh toán";
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
                  label: "Quyền lợi & phí duy trì theo năm",
                  callbackFunction: () {
                    log("Quyền lợi và phí duy trì theo năm");
                  },
                ),
                OptionView(
                  label: "Gói đăng tin",
                  callbackFunction: () {
                    log("Gói đăng tin");
                  },
                ),
                OptionView(
                  label: "Nạp tiền vào tài khoản",
                  callbackFunction: () {
                    log("Nạp tiền vào tài khoản");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NapTienVaoTaiKhoan()),
                    );
                  },
                ),
                OptionView(
                  label: "Chi phí mỗi loại tin",
                  callbackFunction: () {
                    log("Chi phí mỗi loại tin");
                  },
                ),
                OptionView(
                  label: "Tạo sàn giao dịch online",
                  callbackFunction: () {
                    log("Tạo sàn giao dịch online");
                  },
                ),
                OptionView(
                  label: "Thông tin chủ tài khoản và hỗ trợ",
                  callbackFunction: () {
                    log("Thông tin chủ tài khoản và hỗ trợ");
                  },
                ),
              ],
            )),
          ),
        )));
  }
}
