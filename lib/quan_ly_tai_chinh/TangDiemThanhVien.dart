import 'package:cdmg/view/QuanLyTaiChinhItem.dart';
import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

class TangDiemThanhVien extends StatefulWidget {
  const TangDiemThanhVien({super.key});

  @override
  State<StatefulWidget> createState() => _tangDiemThanhVien();
}

class _tangDiemThanhVien extends State<TangDiemThanhVien> {
  Color primaryColor = Color(0xFF005BA0);
  TextStyle mainStyle = TextStyle(color: Color(0xFF222222), fontSize: 16);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Tặng điểm thành viên";
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
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: RichText(
                              text: TextSpan(
                                  text: "Email người nhận",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF222222),
                                      fontFamily: 'Montserrat'),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(color: Colors.red)),
                              ]))),
                      TextField(
                        style: TextStyle(color: Color(0xFF666666)),
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 24, bottom: 10),
                          child: RichText(
                              text: TextSpan(
                                  text: "Số tiền tặng",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF222222),
                                      fontFamily: 'Montserrat'),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(color: Colors.red)),
                              ]))),
                      TextField(
                        style: TextStyle(color: Color(0xFF666666)),
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 24, bottom: 10),
                          child: RichText(
                              text: TextSpan(
                                  text: "Ghi chú",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF222222),
                                      fontFamily: 'Montserrat'),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(color: Colors.red)),
                              ]))),
                      TextField(
                        style: TextStyle(color: Color(0xFF666666)),
                        maxLines: 4,
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 24, bottom: 10),
                          child: RichText(
                              text: TextSpan(
                                  text: "Nhập mã OTP",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF222222),
                                      fontFamily: 'Montserrat'),
                                  children: [
                                TextSpan(
                                    text: ' *',
                                    style: TextStyle(color: Colors.red)),
                              ]))),
                      TextField(
                        style: TextStyle(color: Color(0xFF666666)),
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: AbsorbPointer(
                                child: Container(
                              width: MediaQuery.of(context).size.width * 0.43,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF8F8F8),
                                  border: Border.all(
                                    color: Color(0xFF005BA0),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Center(
                                  child: Text(
                                "Lấy mã OTP",
                                style: TextStyle(
                                    color: Color(0xFF005BA0), fontSize: 16),
                              )),
                            )),
                            onTap: () {},
                          ),
                          GestureDetector(
                            child: AbsorbPointer(
                                child: Container(
                              width: MediaQuery.of(context).size.width * 0.43,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF8F8F8),
                                  border: Border.all(
                                    color: Color(0xFFC4C4C4),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Center(
                                  child: Text(
                                "Lấy mã OTP",
                                style: TextStyle(
                                    color: Color(0xFF666666), fontSize: 16),
                              )),
                            )),
                            onTap: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 36),
                      GestureDetector(
                        child: AbsorbPointer(
                            child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              color: Color(0xFF005BA0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                              child: Text(
                            "Xác nhận tặng",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )),
                        )),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            )),
          ),
        )));
  }
}
