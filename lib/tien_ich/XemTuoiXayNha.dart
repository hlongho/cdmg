import 'package:cdmg/view/TitleBar.dart';

import 'package:cdmg/view/OptionText.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XemTuoiXayNha());

class XemTuoiXayNha extends StatefulWidget {
  const XemTuoiXayNha({super.key});

  @override
  State<StatefulWidget> createState() => _xemTuoiXayNha();
}

class _xemTuoiXayNha extends State<XemTuoiXayNha> {
  onPressTinhLai() {
    setState(() {});
  }

  cbNamSinh(itemSelected) {
    setState(() {
      _namSinh = itemSelected;
    });
  }

  cbNamKhoiCong(itemSelected) {
    setState(() {
      _namKhoiCong = itemSelected;
    });
  }

  String _namSinh = "";
  String _namKhoiCong = "";

  List<String> namSinhList = ["1994", "1995"];
  List<String> namKhoiCongList = ["2022", "2023"];

  Color primaryColor = Color(0xFF005BA0);
  String gioiTinh = "Nam";
  String huongNha = "Đông";
  @override
  Widget build(BuildContext context) {
    const appTitle = "Xem tuổi xây nhà";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            color: Colors.white,
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
                OptionText(
                    title: 'Năm sinh của gia chủ',
                    titleSelectOption: "Năm sinh của gia chủ",
                    datas: namSinhList,
                    callbackFunction: cbNamSinh,
                    selected: _namSinh,
                    isRequired: true),
                OptionText(
                    title: 'Dự kiến năm khởi công',
                    titleSelectOption: "Dự kiến năm khởi công",
                    datas: namKhoiCongList,
                    callbackFunction: cbNamKhoiCong,
                    selected: _namKhoiCong,
                    isRequired: true),
                SizedBox(height: 16),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: onPressTinhLai,
                        child: const Text(
                          "Xem kết quả",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                        ))),
              ],
            )),
          ),
        )));
  }
}
