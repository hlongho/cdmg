import 'dart:developer';
import 'package:cdmg/HuongDanDangTin.dart';
import 'package:cdmg/view/OptionView.dart';
import 'package:cdmg/view/SubPlusValue.dart';
import 'package:intl/intl.dart';

import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/DivideDash.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/StepEditting.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => FormState();
}

class FormState extends State<MyApp> {
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
                Row(
                  children: [
                    Image.asset('assets/images/back.png', height: 16, width: 8),
                    SizedBox(width: 20),
                    Text(
                      "Thanh toán",
                      style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                OptionView(
                  label: "Quyền lợi & phí duy trì theo năm",
                  callbackFunction: () {
                    log("Quyền lợi và phí duy trì theo năm");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HuongDanDangTin()));
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
