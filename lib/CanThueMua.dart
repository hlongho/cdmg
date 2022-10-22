import 'dart:developer';

import 'package:cdmg/ChiPhiVayVon.dart';
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
  int _index = 0;
  final ThongTinCoBanModel _thongTinCoBanModel = ThongTinCoBanModel();
  final MoTaCoBanModel _moTaCoBanModel = MoTaCoBanModel();
  TextStyle styleTitle = const TextStyle(fontSize: 18, color: Colors.black);

  onDangTin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChiPhiVayVon()));
  }

  cbLoaiBDS(itemSelected) {
    setState(() {
      _thongTinCoBanModel.loaiBatDongSan = itemSelected;
    });
  }

  cbTinhThanhPho(itemSelected) {
    setState(() {
      _thongTinCoBanModel.tinhThanhPho = itemSelected;
    });
  }

  cbQuanHuyen(itemSelected) {
    setState(() {
      _thongTinCoBanModel.quanHuyen = itemSelected;
    });
  }

  final List<String> loaiBDSs = <String>[
    'Nhà bán',
    'Đất bán',
    'Cho Thuê',
    'Cần Thuê',
    'Cần mua',
  ];
  final List<String> tinhThanhPhos = <String>[
    'Hồ Chí Minh',
    'Hà Nội',
    'Đà Nẵng',
    'Bình Dương',
    'Đồng Nai',
    'Khánh Hòa',
    'Hải Phòng'
  ];
  final List<String> quanHuyens = <String>[
    'Quận 1',
    'Quận 2',
    'Quận 3',
    'Quận 4',
    'Quận 5',
    'Quận 6',
    'Quận 7'
  ];

  Color primaryColor = Color(0xFF005BA0);

  @override
  Widget build(BuildContext context) {
    const appTitle = "Thông tin cơ bản";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: Icon(
                Icons.keyboard_arrow_left,
                color: primaryColor,
              ),
              backgroundColor: Colors.white,
              title: const Text(
                "Đăng tin",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            body: Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OptionText(
                            title: 'Loại bất động sản',
                            titleSelectOption: 'Chọn loại bất động sản',
                            datas: loaiBDSs,
                            callbackFunction: cbLoaiBDS,
                            selected: _thongTinCoBanModel.loaiBatDongSan,
                            isRequired: true,
                          ),
                          OptionText(
                              title: "Tỉnh/Thành phố",
                              titleSelectOption: "Chọn Tỉnh/Thành phố",
                              datas: tinhThanhPhos,
                              callbackFunction: cbTinhThanhPho,
                              selected: _thongTinCoBanModel.tinhThanhPho,
                              isRequired: true),
                          OptionText(
                              title: "Quận/Huyện",
                              titleSelectOption: "Chọn Quận/Huyện",
                              datas: quanHuyens,
                              callbackFunction: cbQuanHuyen,
                              selected: _thongTinCoBanModel.quanHuyen,
                              isRequired: true),
                          InputWithDescribe(
                            label: 'Tiêu đề tin',
                            describe: 'Tối đa 100 ký tự',
                            hideDescribe: true,
                          ),
                          InputWithDescribe(
                            label: 'Nội dung mô tả',
                            describe: 'Tối đa 3000 ký tự',
                            hideDescribe: true,
                          ),
                          InputWithDescribe(
                              label: "Họ Tên",
                              describe: "",
                              hideDescribe: true),
                          InputWithDescribe(
                              label: "Địa chỉ",
                              describe: "",
                              hideDescribe: true),
                          InputWithDescribe(
                              label: "Số điện thoại",
                              describe: "",
                              hideDescribe: true),
                          InputWithDescribe(
                              label: "Email", describe: "", hideDescribe: true),
                        ],
                      )),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: onDangTin,
                            child: const Text("Đăng tin"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(primaryColor),
                            ))),
                  ],
                ))));
  }
}
