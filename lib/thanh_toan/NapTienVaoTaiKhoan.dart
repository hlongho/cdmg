import 'package:cdmg/view/OptionBox.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:cdmg/view/OptionText.dart';
import 'package:flutter/material.dart';

class NapTienVaoTaiKhoan extends StatelessWidget {
  NapTienVaoTaiKhoan({super.key});

  String _soTien = "";

  List<String> soTienList = ["200.000đ", "500.000đ"];

  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Nạp tiền vào tài khoản";
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
                Text(
                  "Số tiền muốn nạp vào tài khoản của bạn",
                  style: TextStyle(color: Color(0xFF222222), fontSize: 16),
                ),
                OptionBox(
                    title: '',
                    titleSelectOption: "Vui lòng chọn",
                    datas: soTienList,
                    callbackFunction: (itemSlected) {
                      _soTien = itemSlected;
                    },
                    selected: _soTien,
                    isRequired: false),
                SizedBox(height: 16),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Thanh toán",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                        ))),
                Text(
                  "Chú ý: Giá trị thanh toán nạp tiền trên 200.000 đ mới xuất hóa đơn.",
                  style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 14,
                      fontStyle: FontStyle.italic),
                ),
              ],
            )),
          ),
        )));
  }
}
